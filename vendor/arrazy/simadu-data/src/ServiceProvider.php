<?php

namespace Razy\SimaduData;

use Illuminate\Support\ServiceProvider as LaravelServiceProvider;
use Razy\SimaduData\Console\SimaduDataCommand;

class ServiceProvider extends LaravelServiceProvider
{
    public function register()
    {
    }

    public function boot()
    {
        if ($this->app->runningInConsole()) {
            $this->commands([SimaduDataCommand::class]);
            $this->publishMigrations();
            $this->publishModels();
        }
    }

    public function publishModels()
    {
        if (!file_exists(app_path('Models/SimaduPegawai.php'))) {
            $this->publishes([
                __DIR__ . '/Entities/SimaduPegawai.php.stub' => app_path('Models/SimaduPegawai.php'),
            ], 'models');
            return;
        }
    }

    protected function publishMigrations()
    {
        $migration_file = $this->migrationExists('create_simadu_pegawai_table');
        if ($migration_file) unlink($migration_file);

        $this->publishes([
            __DIR__ . '/database/migrations/create_simadu_pegawai_table.php.stub' => database_path('migrations/' . date('Y_m_d_His', time()) . '_create_simadu_pegawai_table.php'),
        ], 'migrations');
        return;
    }



    protected function migrationExists($mgr)
    {
        $path = database_path('migrations/');
        $files = scandir($path);
        $pos = false;
        $migration_file = false;
        foreach ($files as &$value) {
            $pos = strpos($value, $mgr);
            if ($pos !== false) {
                $migration_file = $value;
                return database_path("migrations/$migration_file");
                break;
            }
        }
        return false;
    }
}
