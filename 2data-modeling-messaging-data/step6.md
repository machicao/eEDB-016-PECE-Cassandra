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
 <a href='command:katapod.loadPage?[{"step":"step5"}]'
   class="btn btn-dark navigation-top-left">⬅️ Back
 </a>
<span class="step-count"> Step 6 of 7</span>
 <a href='command:katapod.loadPage?[{"step":"step7"}]' 
    class="btn btn-dark navigation-top-right">Next ➡️
  </a>
</div>

<!-- CONTENT -->

<div class="step-title">Design query Q3</div>

✅ Find all available information about an email with id `8ae31dd0-d361-11ea-a40e-5dd6331dfc45`:

<details>
  <summary>Solution</summary>

```
SELECT id, "to", "from",
       toTimestamp(id) AS timestamp,
       subject, body,
       attachments
FROM emails
WHERE id = 8ae31dd0-d361-11ea-a40e-5dd6331dfc45;
```

</details>

<br/>

Notice the file names and sizes (measured in kilobytes) in column `attachments`. For more efficient retrieval, we can assume that larger files are split into chunks of 1000KB or less. For example, a 530KB file can be stored as one chunk, while a 2416KB file has to be stored using 3 chunks.  


<!-- NAVIGATION -->
<div id="navigation-bottom" class="navigation-bottom">
 <a href='command:katapod.loadPage?[{"step":"step5"}]'
   class="btn btn-dark navigation-bottom-left">⬅️ Back
 </a>
 <a href='command:katapod.loadPage?[{"step":"step7"}]'
    class="btn btn-dark navigation-bottom-right">Next ➡️
  </a>
</div>

