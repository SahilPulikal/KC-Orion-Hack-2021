<div class="table-responsive mt-4">
	<table id="table" class="table table-striped">
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Stream</th>
				<th>Job</th>
			</tr>
		</thead>
		<tbody>
			<?php foreach($name as $names) : ?>
				<tr>
					<td><?= $names->first_name ?></td>
					<td><?= $names->last_name ?></td>
					<td><?= $names->email ?></td>
					<td><?= $names->stream ?></td>
					<td><?= $names->job ?></td>
				<tr>
			<?php endforeach;?>
		</tbody>
	</table>
</div>