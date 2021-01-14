<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Welcome to CodeIgniter</title>

</head>
<body>
    <table width="600" border="1" cellpadding="5">
    <?php foreach ($result as $row) { ?>
        <tr>
            <td><?php echo $row->id; ?></td>
            <td><?php echo $row->label; ?></td>
        </tr?>
    <?php }?>
    </table>
</body>
</html>