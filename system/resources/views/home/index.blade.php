@extends('template.web')
@section('content')
@include('section.menu')

    <section id="hero">
    @foreach($list_foto as $foto)
    <div class="hero-container">
        <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
          
                    <img src="{{url("public/$foto->foto")}}" >
                    
                    <div class="carousel-container">
                        <div class="carousel-content">
                                <h2 class="animate__animated animate__fadeInDown" style="color: white">SELAMAT DATANG DI SIVENTALIS</h2>
                                <p class="animate__animated animate__fadeInUp" style="color: white;"  >
                                Siventalis Adalah Sistem Informasi
                                    Inventarisir Alat Dan Fasilitas Politeknik Negeri Ketapang yang dibuat untuk mempermudah
                                    kita untuk melihat data Alat dan Fasilitas di Politeknik Negeri Ketapang</p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        @endforeach
    </section>

    <main id="main">
        <section id="about" class="about">
            <div class="container">
                <div class="section-title">
                    <h2 style="color: black;">Visi</h2>
                </div>
                <div class="row no-gutters" style="margin-top: -5%">
                    <div class="col-xl-12 ps-0 ps-lg-5 pe-lg-1">
                        <div class="content d-flex flex-column justify-content-center">
                            <div class="text-center"  style="color: #FF8C00;">
                                @foreach ($list_deskripsi as $homeconfig)
                                    @if ($homeconfig->Nama == 'Visi')
                                        <div class="col-md-12 icon-box">
                                            <p>"
                                                {{$homeconfig->Deskripsi}}
                                                "</p>
                                        </div>
                                    @endif
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>

                <div class="container">
                <div class="section-title">
                    <h2 style="color: black;">Misi</h2>
                </div>
                <div class="row no-gutters" style="margin-top: -5%">
                    <div class="col-xl-12 ps-0 ps-lg-5 pe-lg-1">
                        <div class="content d-flex flex-column justify-content-center">
                            <div class="row">
                                @foreach ($list_deskripsi as $homeconfig)
                                    @if ($homeconfig->Nama == 'Misi')
                                        <div class="col-md-12 icon-box">
                                           
                                            <p>
                                            {{$homeconfig->Deskripsi}}
                                                </p>
                                        </div>
                                    @endif
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="container">
                <div class="section-title">
                    <h2 style="color: black;">Tugas dan Fungsi</h2>
                </div>
                <div class="row no-gutters" style="margin-top: -5%">
                    <div class="col-xl-12 ps-0 ps-lg-5 pe-lg-1">
                        <div class="content d-flex flex-column justify-content-center">
                            <div class="row">
                                @foreach ($list_deskripsi as $homeconfig)
                                    @if ($homeconfig->Nama == 'Tugas dan Fungsi')
                                        <div class="col-md-12 icon-box">
                                           
                                            <p>
                                            {{$homeconfig->Deskripsi}}
                                                </p>
                                        </div>
                                    @endif
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>

            </div>


</section>

        <!-- ======= Clients Section ======= -->
        <section id="clients" class="clients section-bg">

        </section>
        <section id="team" class="team">
            <div class="container">

                <div class="section-title">
                    <h2 style="color: black;">Profil Pimpinan</h2>
                    <h2 style="color: black;">Masa Bakti Peridode 2019-2022</h2>
                </div>

                <div class="row">
                    @foreach ($list_homeconfig as $profil_pimpinan)
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="member">

                                <img src="{{ url("public/$profil_pimpinan->Foto") }}" alt="" class="img-fluid">

                                <div class="member-info">
                                    <div class="member-info-content">
                                        <h4 >{{ $profil_pimpinan->Nama }}</h4>
                                        <span>{{ $profil_pimpinan->Jabatan }}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
    </main>
@endsection
