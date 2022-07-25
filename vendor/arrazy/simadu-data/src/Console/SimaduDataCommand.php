<?php

namespace Razy\SimaduData\Console;

use Illuminate\Console\Command;
use Razy\SimaduData\Entities\SimaduPegawai;
use Razy\SimaduData\Http\Requests\SecureRequest;

class SimaduDataCommand extends Command
{
    protected $signature = 'simadu-data:sync {--with-credential}';
    protected $description = 'Simadu Data Synchronizer process';
    protected $data;
    protected $percentage = [];

    public function handle()
    {
        $this->info("Installing Simadu Data Synchronizer");
        $this->publishMigrationsData();
        $this->publishModelsData();
        $this->doMigrationData();
        $this->collectingData();
        $this->importingData();
        $this->info("Simadu data has been sync");
    }

    public function publishMigrationsData()
    {
        $this->info("Publishing Migration");
        if (!class_exists('CreateSimaduPegawaiTable')) {
            $params = [
                '--provider' => "Razy\SimaduData\ServiceProvider",
                '--tag' => "migrations"
            ];
            $this->call('vendor:publish', $params);
        }
    }

    public function publishModelsData()
    {
        $this->info("Publishing Model");
        if (!class_exists('CreateSimaduPegawaiTable')) {
            $params = [
                '--provider' => "Razy\SimaduData\ServiceProvider",
                '--tag' => "models"
            ];
            $this->call('vendor:publish', $params);
        }
    }
    public function doMigrationData()
    {
        $this->info("Creating Table");
        $filename = "database/migrations/" . date('Y_m_d_His', time()) . '_create_simadu_pegawai_table.php';
        $params = [
            '--path' => $filename,
        ];
        $this->call('migrate', $params);
    }

    public function collectingData()
    {
        $url = 'https://simadu.politap.ac.id/api/v1/data/pegawai';
        if ($this->option('with-credential')) $url = 'https://simadu.politap.ac.id/api/v1/data/pegawai-with-credential';
        $this->info('Prepare Secure Request');
        $request = SecureRequest::init();
        $this->info('Calling API');
        $response = $request->call($url);
        $this->info('Getting Data');
        $body = json_decode($response->body());
        $this->data = $body->data;
    }

    public function importingData()
    {
        SimaduPegawai::truncate();
        $count_data = count($this->data);
        $this->info('Importing ' . $count_data . ' Data');
        foreach ($this->data as $key => $item) {
            $this->storeData($item);
            $this->printPercentage($key, $count_data);
        }
        $this->info("Importing Data 100%");
    }

    public function printPercentage($key, $count_data)
    {
        foreach (range(5, 95, 5) as $percentage) {
            $value = $percentage / 100;
            if ($key / $count_data > $value && !in_array($percentage, $this->percentage)) {
                $this->info("Importing Data $percentage%");
                $this->percentage[] = $percentage;
            }
        }
    }
    private static function storeData($item)
    {
        $tanggal_lahir = ($item->tanggal_lahir == '0000-00-00') ? null : $item->tanggal_lahir;
        $password = ($item->password) ?? bcrypt(12345);
        $created_at = ($item->created_at) ?? date("Y-m-d H:i:s");
        $updated_at = ($item->updated_at) ?? date("Y-m-d H:i:s");
        $simadu_pegawai = new SimaduPegawai;
        $simadu_pegawai->id = $item->id;
        $simadu_pegawai->nip = $item->nip;
        $simadu_pegawai->nup = $item->nup;
        $simadu_pegawai->nik_ktp = $item->nik_ktp;
        $simadu_pegawai->email = $item->email;
        $simadu_pegawai->nama = $item->nama;
        $simadu_pegawai->gelar_depan = $item->gelar_depan;
        $simadu_pegawai->gelar_belakang = $item->gelar_belakang;
        $simadu_pegawai->tempat_lahir = $item->tempat_lahir;
        $simadu_pegawai->tanggal_lahir = $tanggal_lahir;
        $simadu_pegawai->jenis_kelamin = $item->jenis_kelamin;
        $simadu_pegawai->agama = $item->agama;
        $simadu_pegawai->password = $password;
        $simadu_pegawai->created_at = $created_at;
        $simadu_pegawai->updated_at = $updated_at;
        $simadu_pegawai->save();
    }
}
