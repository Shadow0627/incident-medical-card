<footer><h2>Strona napisana przez <?php echo author; ?> © <?php echo year; ?></h2></footer>
</body>
</html>
<script><?php if(isset($_SESSION['error'])){print('alert('. $_SESSION['error'] .');'); unset($_SESSION['error']);} ?></script>