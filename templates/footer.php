<footer><h2>Strona napisana przez <?php echo author; ?> © <?php echo year; ?></h2></footer>
</body>
</html>
<script>
$(document).ready(function(){
    <?php if(isset($_SESSION['error'])){
print('
alert("'. $_SESSION["error"] .'");'
);
unset($_SESSION['error']);
}
?>

})

</script>
<?php if(isset($_SESSION['userId']))
{
    include 'helpers/ip.php';
}