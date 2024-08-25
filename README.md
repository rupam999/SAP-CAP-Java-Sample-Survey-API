# MVN Issue

To resolve the issue and successfully add your custom archetype to Maven, follow these steps:

### Step 1: Install Your Archetype Locally

If your archetype is not available in a remote repository, you can install it locally using the following command:

```bash
mvn install
```

This will install the archetype into your local Maven repository (`~/.m2/repository` by default).

### Step 2: Add Your Archetype to the Catalog

To make your archetype discoverable when using `-DarchetypeCatalog=local`, ensure it's included in the `archetype-catalog.xml` file. You can manually create or update this file.

1. **Generate the Archetype Catalog:**

   - If you haven't generated the catalog yet, use the `archetype:crawl` goal:
     ```bash
     mvn archetype:crawl
     ```
   - This will scan your local repository and generate an `archetype-catalog.xml` file.

2. **Place the Catalog File:**

   - Ensure the `archetype-catalog.xml` file is placed in the following location:
     ```
     ~/.m2/repository/archetype-catalog.xml
     ```
   - If it doesn't exist, create it manually and add your archetype details.

3. **Verify the Catalog:**
   - The `archetype-catalog.xml` file should look something like this:
     ```xml
     <archetype-catalog>
       <archetypes>
         <archetype>
           <groupId>com.exa.otp</groupId>
           <artifactId>survey-api</artifactId>
           <version>1.0.0</version>
           <description>Your archetype description</description>
         </archetype>
       </archetypes>
     </archetype-catalog>
     ```

### Step 3: Use the Local Archetype Catalog

After you've ensured your archetype is installed and the catalog is correct, use the following command to generate a project based on your archetype:

```bash
mvn archetype:generate -DarchetypeCatalog=local
```

This should list your local archetypes, including the one you added.

### Step 4: Deploy to a Remote Repository (Optional)

If you want to share your archetype with others, you can deploy it to a remote repository (e.g., Nexus, Artifactory, or Maven Central). Update your `settings.xml` with the repository details, then run:

```bash
mvn deploy
```

This makes the archetype available when using `-DarchetypeCatalog=remote`.

### Final Command:

Once your archetype is set up and available in the catalog, use the following command, specifying the exact version:

```bash
mvn archetype:generate -DarchetypeArtifactId="survey-api" -DarchetypeGroupId="com.exa.otp" -DarchetypeVersion="1.0.0" -DinteractiveMode=true
```

This approach should resolve the error and allow you to generate a project from your custom archetype.
