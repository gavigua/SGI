
 <script type="text/javascript">// <![CDATA[
 $(document).ready(function(){

        $('#country').change(function(){ //any select change on the dropdown with id country trigger this code
        $("#cities > option").remove(); //first of all clear select items
            var country_id = $('#country').val();  // here we are taking country id of the selected one.
            var csfrData = {};
         csfrData['<?php echo $this->security->get_csrf_token_name(); ?>']
                           = '<?php echo $this->security->get_csrf_hash(); ?>';
            $.ajax({
                type: "POST",
	            url: "<?php echo site_url('user/get_cities/'); ?>"+country_id, //here we are calling our user controller and get_cities method with the country_id
	            dataType : 'json',
	            data : csfrData,

                success: function(cities) //we're calling the response json array 'cities'
                {
                    $.each(cities,function(city_id,city) //here we're doing a foeach loop round each city with id as the key and city as the value
                    {
                        var opt = $('<option />'); // here we're creating a new select option with for each city
                        opt.val(city_id);
                        opt.text(city);
                        $('#cities').append(opt); //here we will append these new select options to a dropdown with the id 'cities'
                    });
                }

            });

        });
    });
    // ]]>

</script>
 </head>
<body>


                       <div class="col-lg-6">
                        <div class="form-group">
                            <label class="control-label">Pais <span class="required">*</span></label>
                            <?php echo form_dropdown('country_id', $countries, set_value('country', isset($data->country) ? $data->country : ''), 'id="country" class="form-control" required') ?>
                        </div>
                    </div>
<?php $cities['#'] = 'Seleccione';?>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label class="control-label">Ciudad <span class="required">*</span></label>
                            <?php echo form_dropdown('city_id', $cities, set_value('cities', isset($data->cities) ? $data->cities : ''), 'id="cities" class="form-control" required') ?>
                        </div>
                    </div>

