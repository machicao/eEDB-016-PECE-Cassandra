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
 <a href='command:katapod.loadPage?[{"step":"step4"}]'
   class="btn btn-dark navigation-top-left">⬅️ Back
 </a>
<span class="step-count"> Step 5 of 7</span>
 <a href='command:katapod.loadPage?[{"step":"step6"}]'
    class="btn btn-dark navigation-top-right">Next ➡️
  </a>
</div>

<!-- CONTENT -->

<div class="step-title">Design query Q2</div>

✅ Find ids, subjects, senders, read/unread statuses and timestamps of all emails with label `inbox` for user `joe@datastax.com`; order by timestamp (desc):

<details>
  <summary>Solution</summary>

```
SELECT id, subject, "from", is_read, 
       toTimestamp(id) AS timestamp
FROM emails_by_user_folder
WHERE label = 'inbox' 
  AND username = 'joe@datastax.com'; 
```

</details>

<!-- NAVIGATION -->
<div id="navigation-bottom" class="navigation-bottom">
 <a href='command:katapod.loadPage?[{"step":"step4"}]'
   class="btn btn-dark navigation-bottom-left">⬅️ Back
 </a>
 <a href='command:katapod.loadPage?[{"step":"step6"}]'
    class="btn btn-dark navigation-bottom-right">Next ➡️
  </a>
</div>

