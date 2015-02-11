
<?php
if (isset($this->items[0])){
   $this->item = &$this->items[0];
   echo $this->loadTemplate('item');
}
?>
<?php
if (isset($this->items[1])){
   $this->item = &$this->items[1];
   echo $this->loadTemplate('item');
}
?>
