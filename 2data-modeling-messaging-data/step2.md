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
 <a href='command:katapod.loadPage?[{"step":"intro"}]'
   class="btn btn-dark navigation-top-left">⬅️ Back
 </a>
<span class="step-count"> Step 2 of 7</span>
 <a href='command:katapod.loadPage?[{"step":"step3"}]' 
    class="btn btn-dark navigation-top-right">Next ➡️
  </a>
</div>

<!-- CONTENT -->

<div class="step-title">Create tables</div>

✅ Create table `folders_by_user`:
```
CREATE TABLE IF NOT EXISTS folders_by_user (
  username TEXT,
  label TEXT,
  color TEXT,
  PRIMARY KEY ((username),label)
);
```

✅ Create table `unread_email_stats`:
```
CREATE TABLE IF NOT EXISTS unread_email_stats (
  username TEXT,
  label TEXT,
  num_unread COUNTER,
  PRIMARY KEY ((username),label)
);
```

✅ Create table `emails_by_user_folder`:
```
CREATE TABLE IF NOT EXISTS emails_by_user_folder (
  username TEXT,
  label TEXT,
  id TIMEUUID,
  "from" TEXT,
  subject TEXT,
  is_read BOOLEAN,
  PRIMARY KEY ((username,label),id)
) WITH CLUSTERING ORDER BY (id DESC);
```

✅ Create table `emails`:
```
CREATE TABLE IF NOT EXISTS emails (
  id TIMEUUID,
  "to" LIST<TEXT>,
  "from" TEXT,
  subject TEXT,
  body TEXT,
  attachments MAP<TEXT,INT>,
  PRIMARY KEY ((id))
);
```

✅ Create table `attachments`:
```
CREATE TABLE IF NOT EXISTS attachments (
  email_id TIMEUUID,
  filename TEXT,
  chunk_number INT,
  type TEXT,
  value BLOB,
  PRIMARY KEY ((email_id,filename,chunk_number))
);
```

✅ Verify that the five tables have been created:
```
DESCRIBE TABLES;
```

<!-- NAVIGATION -->
<div id="navigation-bottom" class="navigation-bottom">
 <a href='command:katapod.loadPage?[{"step":"intro"}]'
   class="btn btn-dark navigation-bottom-left">⬅️ Back
 </a>
 <a href='command:katapod.loadPage?[{"step":"step3"}]'
    class="btn btn-dark navigation-bottom-right">Next ➡️
  </a>
</div>
