<footer><h2>Strona napisana przez <?php echo author; ?> © <?php echo year; ?></h2></footer>
</body>
</html>
<script>
$(document).ready(function(){
    <?php 
print('
alert("'. $_SESSION["error"] .'");'
);
?>

})

</script>
<?php if(isset($_SESSION['userId']))
{
    include 'helpers/ip.php';
}