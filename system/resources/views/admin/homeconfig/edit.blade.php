@extends('template.admin')
@section('content')
@include('section.admin')
<div class="container-fluid mt-5">
    <div class="card">
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
           
                <h5 class="card-header" >Edit Profil Pimpinan </h5>
            </div>
            <div class="card-body">
                <form action="{{url('update-profil', $profil_pimpinan->id)}}" method="post" enctype="multipart/form-data"> 
                    @csrf
                    @method("PUT")
                    <div class="form-group row">
                         <label for="inputEmail2" class="col-3 col-lg-2 col-form-label">Nama Lengkap</label>
                         <div class="col-9 col-lg-10">
                             <input id="inputEmail2" type="text" class="form-control" name="Nama" value="{{$profil_pimpinan->Nama}}">
                        </div>
                    </div>
                    <div class="form-group row">
                            <label for="inputEmail2" class="col-3 col-lg-2 col-form-label">Jabatan</label>
                            <div class="col-9 col-lg-10">
                                <input id="inputEmail2" type="text" class="form-control" name="Jabatan" value="{{$profil_pimpinan->Jabatan}}">
                            </div>
                    </div>

                    <div class="form-group row">
                             <label for="inputPassword3" class="col-sm-2 col-form-label">Poto</label>
                             <div class="col-md-4">
                                 <img class="img-responsive" src='{{ url("public/$profil_pimpinan->Foto") }}'style="object-fit: cover; position: static; width: 50%; height: 200px;">
                             </div>
                             <div class="col-md-6">
                                     <input type="file" class="form-control" id="inlineinput" name="Foto" accept=".jpg, .png, .jpeg" value="{{ $profil_pimpinan->Foto }}">
                             </div>
                    </div>
                        <div class="modal-footer">
                            <button class="btn btn-primary float-right mb-3"><i class="fa fa-save"></i> Simpan </button>
                        </div>
                </form>
          </div>
    </div>
</div>
@endsection