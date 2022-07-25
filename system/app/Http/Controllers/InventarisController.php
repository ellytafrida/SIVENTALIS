<?php

namespace App\Http\Controllers;
use App\Models\Inventaris;
use App\Models\Pegawai;
use App\Models\Ruangan;
use App\Models\Unit;
use App\Models\Kondisi;
use App\Models\User;

class InventarisController extends Controller
{
    public function index()
    {
        $data['list_inventaris'] = Inventaris::orderBy('id', 'ASC')->take(1)->get();
        $data['data_inventaris'] = Inventaris::all();

        $data['list_ruangan'] = Ruangan::orderBy('id', 'ASC')->take(1)->get();
        $data['data_ruangan'] = Ruangan::all();


        $data['list_unit'] = Unit::all();
        $data['list_pegawai'] = Pegawai::all();
     
        $data['user'] = auth()->user();
        return view('admin.inventaris.index', $data);
    }


	function create(){
		return view('admin.inventaris.create');
	}


    public function store(){

        $inventaris = New Inventaris;
        $inventaris->kode_barang = request('kode_barang');

        $inventaris->Nama_Barang = request('Nama_Barang');
        $inventaris->Spesifikasi = request('Spesifikasi');
        $inventaris->kepemilikan = request('kepemilikan');
        $inventaris->Tahun_Pengadaan = request('Tahun_Pengadaan');
        $inventaris->id_kondisi = request('id_kondisi');
        $inventaris->id_ruangan= request('id_ruangan');
        
        $inventaris->id_unit= request('id_unit');
        $inventaris->handleUploadFoto();
        $inventaris->save();

        return back()->with('success','Data Inventaris Berhasil Ditambahkan');
    }

    function show(Unit $unit){
        $data['user'] = auth()->user();
		$data['unit'] = $unit;
        $data['list_inventaris'] = Inventaris::all();
        $data['list_ruangan'] = Ruangan::all();
        $data['list_kondisi'] = Kondisi::all();
		return view('admin.inventaris.show', $data);
	}

    function showInventaris(Inventaris $inventaris){
        $data['user'] = auth()->user();
		$data['inventaris'] = $inventaris;
        $data['list_kondisi'] = Kondisi::all();
        $data['list_ruangan'] = Ruangan::all();
		return view('admin.inventaris.detail', $data);
	}


	function edit(Inventaris $inventaris){
        $data['user'] = auth()->user();
		$data['inventaris'] = $inventaris;
        $data['list_unit'] = Unit::all();
        $data['list_ruangan'] = Ruangan::all();
        $data['list_kondisi'] = Kondisi::all();
		return view('admin.inventaris.edit', $data);

	}
	public function updateinventaris($id){
        $inventaris = Inventaris::find($id);
        $inventaris->kode_barang = request('kode_barang');
  
        $inventaris->Nama_Barang = request('Nama_Barang');
        $inventaris->Spesifikasi = request('Spesifikasi');
        $inventaris->kepemilikan = request('kepemilikan');
        $inventaris->Tahun_Pengadaan = request('Tahun_Pengadaan');
        $inventaris->id_kondisi = request('id_kondisi');
        $inventaris->id_ruangan= request('id_ruangan');
        $inventaris->id_unit= request('id_unit');
        $inventaris->handleUploadFoto();
		$inventaris->save();

		return redirect('inventaris')->with('success','Data Berhasil Diedit');

	}
	function destroy(Inventaris $inventaris){
		$inventaris->delete();
		return back()->with('danger','Data Berhasil Dihapus');
	}
}
