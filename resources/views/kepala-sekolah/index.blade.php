@extends('main')
@section('content')

<style type="text/css">

</style>
<!-- partial -->
<div class="content-wrapper">
  <div class="row">
    <div class="col-lg-12">
      <nav aria-label="breadcrumb" role="navigation">
        <ol class="breadcrumb bg-info">
          <li class="breadcrumb-item"><i class="fa fa-home"></i>&nbsp;<a href="{{url('/home')}}">Home</a></li>
          <li class="breadcrumb-item active" aria-current="page">Kepala Sekolah</li>
        </ol>
      </nav>
    </div>
  	<div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Kepala Sekolah</h4>
                    <div class="col-md-12 col-sm-12 col-xs-12" align="right" style="margin-bottom: 15px;">
                      {{-- @if(Auth::user()->akses('MASTER DATA STATUS','tambah')) --}}
                      {{-- <button type="button" class="btn btn-info" onclick="showcreate()"><i class="fa fa-plus"></i>&nbsp;&nbsp;Tambah Data</button> --}}
                      {{-- @endif --}}
                    </div>
                    <div class="table-responsive">
        				        <table class="table table_status table-hover " id="table-data" cellspacing="0">
                            <thead class="bg-gradient-info">
                              <tr>
                                <th>No</th>
                                <th>Foto</th>
                                <th>Nama Lengkap</th>
                                <th>Tanggal Lahir</th>
                                <th>Telepon</th>
                                <th>Alamat</th>
                                <th>Jenis Kelamin</th>
                                <th>Aksi</th>
                              </tr>
                            </thead>

                            <tbody>

                            </tbody>


                        </table>
                    </div>
                  </div>
                </div>
    </div>
  </div>
</div>
<!-- content-wrapper ends -->
@endsection
@section('extra_script')
<script>

baseUrlChange += "/admin/kepala-sekolah";

var table = $('#table-data').DataTable({
        processing: true,
        // responsive:true,
        serverSide: true,
        searching: true,
        paging: true,
        dom: 'Bfrtip',
        title: '',
        buttons: [
            // 'copy', 'csv', 'excel', 'pdf', 'print'
        ],
        ajax: {
            url:'{{ url('admin/kepala-sekolah/table') }}',
        },
        columnDefs: [

              {
                 targets: 0 ,
                 className: 'center id'
              },
              {
                 targets: 1,
                 className: 'center'
              },
              {
                 targets: 2,
                 className: 'center'
              },
              {
                 targets: 3,
                 className: 'center'
              },
              {
                 targets: 4,
                 className: 'center'
              },
              {
                 targets: 5,
                 className: 'center'
              },
              {
                 targets: 6,
                 className: 'center'
              },
              {
                 targets: 7,
                 className: 'center'
              },
            ],
        "columns": [
          {data: 'DT_Row_Index', name: 'DT_Row_Index'},
          {data: 'foto_profil', name: 'foto_profil'},
          {data: 'nama_lengkap', name: 'nama_lengkap'},
          {data: 'tanggal_lahir', name: 'tanggal_lahir'},
          {data: 'phone', name: 'phone'},
          {data: 'alamat', name: 'alamat'},
          {data: 'jenis_kelamin', name: 'jenis_kelamin'},
          {data: 'aksi', name: 'aksi'},
        ]
  });

    $('#simpan').click(function(){

    var formdata = new FormData();
    formdata.append('image', $('.uploadGambar')[0].files[0]);

    $.ajax({
      type: "post",
      url: baseUrlChange + '/simpan?_token='+"{{csrf_token()}}&"+$('.table_modal :input').serialize(),
      data: formdata,
      processData: false, //important
      contentType: false,
      cache: false,
      success:function(data){
        if (data.status == 1) {
          iziToast.success({
              icon: 'fa fa-save',
              message: 'Data Berhasil Disimpan!',
          });
          reloadall();
        }else if(data.status == 2){
          iziToast.warning({
              icon: 'fa fa-info',
              message: 'Data Gagal Disimpan, Silahkan cek koneksi internet anda',
          });
        }else if (data.status == 3){
          iziToast.success({
              icon: 'fa fa-save',
              message: 'Data Berhasil di Perbarui ! !',
          });
          reloadall();
        }else if (data.status == 4){
          iziToast.warning({
              icon: 'fa fa-info',
              message: 'Data Gagal di Perbarui !!',
          });
        } else if (data.status == 7) {
          iziToast.warning({
              icon: 'fa fa-info',
              message: data.message,
          });
        }

      }
    });
  })

  //show pop up jika data berhasil di hapus
  if("{{Session::has('success')}}"){
    iziToast.success({
  icon: 'fa fa-trash',
  message: "{{Session::get('success')}}",
  });
  }

    function showcreate() {
      $('.table_modal :input').val("");
      table.ajax.reload();

      $('#tambah').modal('show');
    }

    function reloadall() {
      $('.table_modal :input').val("");
      $('.image-holder').empty();
      $('#tambah').modal('hide');
      $('.role').val('').change();
      $('.gender').val('').change();
      // // $('#table_modal :input').val('');
      // $(".inputtext").val("");
      // var table1 = $('#table_modal').DataTable();
      // table1.ajax.reload();
      table.ajax.reload();
    }
  </script>
@endsection
