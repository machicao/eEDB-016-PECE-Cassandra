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
 <a href='command:katapod.loadPage?[{"step":"step6"}]'
   class="btn btn-dark navigation-top-left">⬅️ Back
 </a>
<span class="step-count"> Step 7 of 7</span>
 <a href='command:katapod.loadPage?[{"step":"finish"}]'
    class="btn btn-dark navigation-top-right">Next ➡️
  </a>
</div>

<!-- CONTENT -->

<div class="step-title">Design query Q4</div>

✅ Find an attachment file with name `Budget.xlsx` for an email with id `8ae31dd0-d361-11ea-a40e-5dd6331dfc45`, assuming that the complete file is stored in one partition with chunk number `1`:

<details>
  <summary>Solution</summary>

```
SELECT filename, type, value,
       blobAsText(value)
FROM attachments
WHERE email_id = 8ae31dd0-d361-11ea-a40e-5dd6331dfc45
  AND filename = 'Budget.xlsx'
  AND chunk_number = 1;
```

</details>

<br/>

✅ Find an attachment file with name `Presentation.pptx` for an email with id `8ae31dd0-d361-11ea-a40e-5dd6331dfc45`, assuming that the three file chunks are stored across three partitions with chunk numbers `1`, `2` and `3`:

<details>
  <summary>Solution</summary>

```
SELECT filename, type, value,
       blobAsText(value)
FROM attachments
WHERE email_id = 8ae31dd0-d361-11ea-a40e-5dd6331dfc45
  AND filename = 'Presentation.pptx'
  AND chunk_number IN (1,2,3);
```

</details>

<!-- NAVIGATION -->
<div id="navigation-bottom" class="navigation-bottom">
 <a href='command:katapod.loadPage?[{"step":"step6"}]'
   class="btn btn-dark navigation-bottom-left">⬅️ Back
 </a>
 <a href='command:katapod.loadPage?[{"step":"finish"}]'
    class="btn btn-dark navigation-bottom-right">Next ➡️
  </a>
</div>

