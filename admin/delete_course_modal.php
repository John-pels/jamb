	<div id="delete_course<?php echo $id; ?>" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-body">
			<div class="alert alert-danger">Are you Sure yuo want to Delete <span style="font-weight:bold; font-size:14px;"> <?php echo $row['surname'].' '.$row['othernames']; ?></span></div>

		</div>
		<div class="modal-footer">
			<a class="btn btn-danger" href="dels.php<?php echo '?id='.$id; ?>">Yes</a>
			<button class="btn" data-dismiss="modal" aria-hidden="true"><i class="icon-remove icon-large"></i>&nbsp;Close</button>
		</div>
    </div>
	