<!-- TOP -->
<div class="top">
  <img class="scenario-academy-logo" src="https://datastax-academy.github.io/katapod-shared-assets/images/ds-academy-2023.svg" />
  <div class="scenario-title-section">
    <span class="scenario-title">Shopping Cart Data Modeling</span>
    <span class="scenario-subtitle">ℹ️ For technical support, please contact us via <a href="mailto:aleksandr.volochnev@datastax.com">email</a> or <a href="https://dtsx.io/aleks">LinkedIn</a>.</span>
  </div>
</div>

<!-- NAVIGATION -->
<div id="navigation-top" class="navigation-top">
 <a href='command:katapod.loadPage?[{"step":"step9-cassandra"}]'
   class="btn btn-dark navigation-top-left">⬅️ Back
 </a>
<span class="step-count"> Step 10 of 10</span>
 <a href='command:katapod.loadPage?[{"step":"finish-cassandra"}]'
    class="btn btn-dark navigation-top-right">Next ➡️
  </a>
</div>

<!-- CONTENT -->

<div class="step-title">Design update U1</div>

✅ Add item `Box2` into active cart `19925cc1-4f8b-4a44-b893-2a49a8434fc8` and update the cart subtotal to `111.50`:

<details>
  <summary>Solution</summary>

```
BEGIN BATCH
  INSERT INTO items_by_cart (
    cart_id,
    timestamp,
    item_id,
    item_name,
    item_description,
    item_price,
    quantity)
  VALUES (
    19925cc1-4f8b-4a44-b893-2a49a8434fc8,
    TOTIMESTAMP(NOW()),
    'Box2',
    'Chocolates',
    '25 gourmet chocolates from our collection',
    60.00,
    1);
  UPDATE items_by_cart 
  SET cart_subtotal = 111.50
  WHERE cart_id = 19925cc1-4f8b-4a44-b893-2a49a8434fc8
  IF cart_subtotal = 51.50;
APPLY BATCH;

SELECT timestamp, item_id, item_price, 
       quantity, cart_subtotal 
FROM items_by_cart
WHERE cart_id = 19925cc1-4f8b-4a44-b893-2a49a8434fc8; 
```

</details>

<!-- NAVIGATION -->
<div id="navigation-bottom" class="navigation-bottom">
 <a href='command:katapod.loadPage?[{"step":"step9-cassandra"}]'
   class="btn btn-dark navigation-bottom-left">⬅️ Back
 </a>
 <a href='command:katapod.loadPage?[{"step":"finish-cassandra"}]'
    class="btn btn-dark navigation-bottom-right">Next ➡️
  </a>
</div>

