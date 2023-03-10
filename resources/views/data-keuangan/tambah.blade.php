<!-- Modal -->
<div id="tambah" class="modal fade" role="dialog">
  <div class="modal-dialog modal-xs">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header bg-gradient-info">
        <h4 class="modal-title">Form Data Keuangan</h4>
        <button type="button" class="close" id="batal" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <center>
          <div class="alert alert-warning" role="alert">
            Tambahkan data dengan baik dan benar
          </div>
        </center>
        <div class="row">
          <table class="table table_modal">

          <tr>
          <td>Kategori Keuangan</td>
          <input type="hidden" class="form-control form-control-sm id" name="id">

              <td>
                <select class="form-control form-control-sm inputtext keuangan_kategori_id" name="keuangan_kategori_id" id="keuangan_kategori_id">
                <option disabled selected value>Pilih Kategori</option>
                  <?php foreach($kategori as $kategori){ ?>

                  <option value="<?= $kategori->id ?>">
                    <?= $kategori->nama ?>
                  </option>
                  <?php }?>
                </select>
              </td>

          </tr>
          <tr>
            <td>Siswa</td>
            <td>
              <select class="form-control form-control-sm inputtext siswa_id" name="siswa_id" id="siswa_id">
              <option disabled selected value>Pilih Siswa</option>
                <?php foreach($siswa as $siswa){ ?>

                <option value="<?= $siswa->id ?>">
                  <?= $siswa->nama_lengkap ?>
                </option>
                <?php }?>
              </select>
            </td>
          </tr>
          <tr>
            <td>Nominal</td>
            <td>
              <input type="text" class="form-control form-control-sm" name="nominal" id="nominal" >
            </td>
          </tr>
          <tr>
            <td>Keterangan</td>
            <td>
              <!-- <input type="text" class="form-control form-control-sm" name="keterangan" id="keterangan" > -->

              <select class="form-control form-control-sm inputtext keterangan" name="keterangan">
                <option disabled selected value>Pilih Bulan</option>

                  <option value="Januari">
                   Januari
                  </option>
                  <option value="Februari">
                   Februari
                  </option> <option value="Maret">
                   Maret
                  </option> <option value="April">
                   April
                  </option> <option value="Mei">
                   Mei
                  </option>
                  </option> <option value="Juni">
                   Juni
                  </option>
                  </option> <option value="Juli">
                   Juli
                  </option>
                  </option> <option value="Agustus">
                   Agustus
                  </option>
                  </option> <option value="September">
                   September
                  </option>
                  </option> <option value="Oktober">
                   Oktober
                  </option>
                  </option> <option value="November">
                   November
                  </option>
                  </option> <option value="Desember">
                   Desember
                  </option>

                </select>
            </td>
          </tr>
          <tr>
            <td>Bukti Pembayaran</td>
            <td>
              <input type="file" class="form-control form-control-sm uploadGambar" name="image" accept="image/*">
            </td>
          </tr>
          <tr>
            <td align="center" colspan="2">
              <div class="col-md-8 col-sm-6 col-xs-12 image-holder" id="image-holder">

                {{-- <img src="#" class="thumb-image img-responsive" height="100px" alt="image" style="display: none"> --}}

            </div>
            </td>
          </tr>
          <!-- <tr>
            <td>
              <input type="text" class="form-control form-control-sm" name="nama_kategori" id="nama_kategori" >
            </td>
          </tr> -->

          </table>
        </div>
        <div class="modal-footer">
          <button class="btn btn-primary" id="simpan" type="button">Simpan</button>
          <button type="button" class="btn btn-warning" data-dismiss="modal" id="batal">Batal</button>
        </div>
      </div>
      </div>

  </div>
</div>
