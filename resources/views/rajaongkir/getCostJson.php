<?php

$origin = $data['origin'];
$destination = $data['destination'];
$berat = $data['berat'];
$courier = $data['courier'];

$curl = curl_init();
curl_setopt_array($curl, array(
	CURLOPT_URL => "http://api.rajaongkir.com/starter/cost",
	CURLOPT_RETURNTRANSFER => true,
	CURLOPT_ENCODING => "",
	CURLOPT_MAXREDIRS => 10,
	CURLOPT_TIMEOUT => 30,
	CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	CURLOPT_CUSTOMREQUEST => "POST",
	CURLOPT_POSTFIELDS => "origin=$origin&destination=$destination&weight=$berat&courier=$courier",
	CURLOPT_HTTPHEADER => array(
		"content-type: application/x-www-form-urlencoded",
		"key: c61d1581355eb439ffd214f2f474f2f8"
	),
));
$response = curl_exec($curl);
$err = curl_error($curl);
curl_close($curl);
if ($err) {
	echo "cURL Error #:" . $err;
} else {

	$data = json_decode($response, true);
}?> 



<center><b>Hasil Data Pencarian Jasa Pengiriman <?php echo strtoupper($courier); ?> </b><br><?php echo $data['rajaongkir']['origin_details']['city_name'];?> ke <?php echo $data['rajaongkir']['destination_details']['city_name'];?> @<?php echo $berat;?>gram </center>

<?php

for ($k=0; $k < count($data['rajaongkir']['results']); $k++) {
	?>
	
	<div title="<?php echo strtoupper($data['rajaongkir']['results'][$k]['name']);?>" style="padding:10px">
	<table class="timetable_sub">
	<tr>
	<th>No.</th>
	<th>Layanan</th>
	<th>Waktu Pengiriman</th> 
	<th>Tarif</th>
	<th>Pilih Jenis Layanan</th>
	</tr>
	<?php
	for ($l=0; $l < count($data['rajaongkir']['results'][$k]['costs']); $l++) {
		?>
		<tr>
		<td><?php echo $l+1; 



		  ?></td>
		<td>
		<div style="font:bold 16px Arial"><?php echo $data['rajaongkir']['results'][$k]['costs'][$l]['service'];;?></div>
		<div style="font:normal 11px Arial"><?php echo $data['rajaongkir']['results'][$k]['costs'][$l]['description'];?></div>
		</td>
		<td align="center">&nbsp;<?php echo $data['rajaongkir']['results'][$k]['costs'][$l]['cost'][0]['etd'];?> days</td>
		<td align="right"><?php echo number_format($data['rajaongkir']['results'][$k]['costs'][$l]['cost'][0]['value']);?></td>
		<td><input type="radio" class="kurir" name="data_pengiriman" value="<?= $data['rajaongkir']['results'][$k]['costs'][$l]['cost'][0]['value'] ."". $data['rajaongkir']['results'][$k]['costs'][$l]['cost'][0]['etd'] ."". $data['rajaongkir']['results'][$k]['costs'][$l]['description'] ?>"> <br></td>
		</tr>
		<?php
	}
	?>
	</table>
	</div>
	<?php
}
?>