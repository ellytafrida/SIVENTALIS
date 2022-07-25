@extends('template.web')
@section('content')
@include('section.menu')

@csrf
<br><br><br><br>
<main id="main">
    <section id="portfolio-details" class="portfolio-details">
        <div class="container">
            <div class="section-title">
                <h2>{{$ruangan->unit->nama_unit}}</h2>
                <h2 style="color: black; text-align:center; margin-top: -2%">{{$ruangan->nama_ruangan}}</h2>
            </div>
           
            <div class="row gy-4">
                @foreach ($list_inventaris as $inventaris)
                @if($inventaris->id_ruangan == $ruangan->id)
                <div class="col-lg-3">
                    <div class="portfolio-details-slider swiper">
                        <div class="swiper-wrapper align-items-center">
                            <div class="swiper">
                                <img src="{{ url("public/$inventaris->Foto") }}" alt="">
                            </div>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                    <div class="portfolio-info">
                     
                        <ul>
                            <li><strong>Nama Barang</strong>: {{ $inventaris->Nama_Barang }}</li>
                            <li><strong>Spesifikasi</strong>: {{ $inventaris->Spesifikasi }}</li>
                            <li><strong>Tahun Pengadaan</strong>: {{ $inventaris->Tahun_Pengadaan }}</li>
                            <li><strong>Penanggungjawab</strong>: {{ $inventaris->ruangan->pegawai->nama}}</li>
                        </ul>
                    </div>
                </div>  
                @endif
                @endforeach 
            </div>
        </div>
    </section>
</main>

@endsection