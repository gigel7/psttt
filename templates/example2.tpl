//document title

head title = $this->title

//we just need one product to fill in data and iterate

#product_list > div.product|deleteAllButFirst

//add iteration code, php foreach that will fill in data

#product_list > div.product|before = <?php if ($this->products) foreach($this->products as $product):?>

    #product_list > div.product> h2 	  = $product['title']
    #product_list > div.product > img|src = $product['img']
    #product_list > div.product > p 	  = $product['description']
	#product_list > div.product strong 	  = $product['price']
	
#product_list > div.product|after = <?php endforeach;?>
