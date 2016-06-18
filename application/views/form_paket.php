<form class="col s12" action="<?=base_url()?>paket/do_insert" method="post" enctype="multipart/form-data">
  <div class="row">
    <div class="input-field col s12">
      <input placeholder="Nama Paket" id="nama_paket" type="text" class="validate" name="nama_paket" required>
      <label for="nama_paket">Nama Paket</label>
    </div>
  </div>
  <div class="row">
    <div class="input-field col s12">
      <select name="menu_group" id="menu_group" onchange="setFirstSub()" required>
        <option value="" disabled selected>Choose your option</option>
        <?php foreach($option_group as $group){?>
          <option value="<?=$group->code?>"><?=$group->name?></option>
        <?php } ?>
      </select>
      <select name="first_sub" onchange="setSecondSub()" id="first_sub" required>     
      </select>
      <label>Kategori</label>
    </div>
  </div>
  <div class="row">
    <div class="input-field col s12">
      <select name="currency" required>
        <option value="" disabled selected>Choose your option</option>
        <option value="IDR">IDR</option>
        <option value="USD">USD</option>
        <option value="EUR">EUR</option>
      </select>
      <label>Currency</label>
    </div>
  </div>
  <div class="row">
    <div class="input-field col s12">
      <input placeholder="Price" id="price" type="number" class="validate" name="price" required>
      <label for="price">Price</label>
    </div>
  </div>
  <div class="row">
    <div class="input-field col s12">
      <input placeholder="Minimum Person" id="person" type="number" class="validate" name="person" required>
      <label for="person">Minimum Person</label>
    </div>
  </div>
  <div class="row">
    <div class="input-field col s12">
      <h5>Description</h5><br/>
      <textarea id="description" name="description" class="materialize-textarea ckeditor"></textarea>
    </div>
  </div><br/><br/>
  <div class="row">
    <div class="input-field col s12">
      <h5>Package Description</h5><br/>
      <textarea id="package" name="package" class="materialize-textarea ckeditor"></textarea>
    </div>
  </div><br/><br/>
  <!-- <div class="file-field input-field">
      <div class="btn">
        <span>UPLOAD GAMBAR</span>
        <input type="file" name="img" multiple >
      </div>
      <div class="file-path-wrapper">
        <input class="file-path validate" type="text" placeholder="Upload one or more files">
      </div>
  </div>
 --> 
 <div class="row">
    <p>
      <input type="checkbox" id="is_active" name="is_active" />
      <label for="is_active"><strong>Active</strong></label>
    </p>
 </div>
 <div class="row center">
    <button class="waves-effect waves-light btn" type="submit">OK</button> 
 </div>
</form>

<div class="fixed-action-btn" style="bottom: 45px; right: 24px;">
  <a class="btn-floating btn-large waves-effect waves-light orange" href="<?=base_url()?>paket">
    <i class="large material-icons">navigate_before</i>
  </a>
</div>

<script type="text/javascript">
  function setFirstSub(){
    var menu_group = $('#menu_group').val();
    $('#first_sub').material_select();
    $.get("<?=base_url()?>paket/get_first_sub/"+menu_group, function(data) {
        var json = $.parseJSON(data);
        $(json).each(function(index, item) {
            $('#first_sub').append($('<option>', {
                value: item.id,
                text: item.name
            }));
        });
    });

    $('#first_sub').material_select('update');
  }
</script>>