# Large File Reader
When reading huge files in Linx, but have limited resources like RAM, you can use a small piece of C# code to only read batches from a file and then use it, for instance write it to a database.

# Background

Let's assume you've got a Linx machine with limited RAM (2gb for this example), and you want to read a massive file with 100,000 or more records into a database, you will most probably run out of RAM while trying to read the file with the standard TextFileRead component. To solve this issue, in this example, we're reading the file in batches. By changing the size of the batch that you want to read, you can trade off speed vs. RAM usage. The more lines you read at a time, the quicker you will finish writing the data to your database, but the more RAM you will use.

# Setup

- Download Linx Designer (Linx 5.12+) - https://linx.software
- Download this solution - LargeFileReaderNoMem.lsoz
- Download the 200MB mock data for this test - MOCK_DATA.7z (You will need to uncompress this file using 7zip. https://www.7-zip.org/download.html )
- Use the DBCreate.sql script to create a similar database
- Set your connection string in your settings
- Set the file path of the Mock data file in your settings
- Debug the process.
