<!-- TOP -->
<div class="top">
  <img class="scenario-academy-logo" src="https://datastax-academy.github.io/katapod-shared-assets/images/ds-academy-2023.svg" />
  <div class="scenario-title-section">
    <span class="scenario-title">Messaging Data Modeling</span>
    <span class="scenario-subtitle">ℹ️ For technical support, please contact us via <a href="mailto:aleksandr.volochnev@datastax.com">email</a> or <a href="https://dtsx.io/aleks">LinkedIn</a>.</span>
  </div>
</div>

<!-- NAVIGATION -->
<div id="navigation-top" class="navigation-top">
 <a href='command:katapod.loadPage?[{"step":"step3"}]'
   class="btn btn-dark navigation-top-left">⬅️ Back
 </a>
<span class="step-count"> Step 4 of 7</span>
 <a href='command:katapod.loadPage?[{"step":"step5"}]' 
    class="btn btn-dark navigation-top-right">Next ➡️
  </a>
</div>

<!-- CONTENT -->

<div class="step-title">Design queries Q1.1 and Q1.2</div>

✅ Find all folder labels and colors for user `joe@datastax.com`:

<details>
  <summary>Solution</summary>

```
SELECT label, color 
FROM folders_by_user
WHERE username = 'joe@datastax.com';   
```

</details>

<br/>

✅ Find all folder labels and unread email quantities for user `joe@datastax.com`:

<details>
  <summary>Solution</summary>

```
SELECT label, num_unread 
FROM unread_email_stats
WHERE username = 'joe@datastax.com'; 
```

</details>

<!-- NAVIGATION -->
<div id="navigation-bottom" class="navigation-bottom">
 <a href='command:katapod.loadPage?[{"step":"step3"}]'
   class="btn btn-dark navigation-bottom-left">⬅️ Back
 </a>
 <a href='command:katapod.loadPage?[{"step":"step5"}]'
    class="btn btn-dark navigation-bottom-right">Next ➡️
  </a>
</div>

