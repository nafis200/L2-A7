
1. What is PostgreSQL?

PostgreSQL একটি ওপেন সোর্স রিলেশনাল ডাটাবেস ম্যানেজমেন্ট সিস্টেম যা ডাটা সংরক্ষণ ও পরিচালনা করতে ব্যবহৃত হয়। 

2. What is the purpose of a database schema in PostgreSQL?

ডাটাবেস স্কিমা ডাটাবেসের গঠন, যা টেবিল, ভিউ, ইনডেক্স এবং অন্যান্য অবজেক্টের সম্পর্ক নির্ধারণ করে

3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.?

একটা টেবিল এর প্রতিটি ডাটা যদি আলাদা এবং শুন্য না হয় তবে তাকে আমরা প্রাইমারি কী বলতে পারি।
একটা টেবিল এর প্রাইমারি কী অন্য টেবিল এর সাধারণ কী হিসাবে ব্যবহত হলে তাকে ফরেন কী বলে

4. What is the difference between the VARCHAR and CHAR data types?

VARCHAR একটি ভেরিয়েবল লেন্থের স্ট্রিং ডাটা টাইপ। এটি যতটুকু স্ট্রিং দেয়া হবে, তার জন্যই সাইজ বরাদ্দ করবে, ফলে কম জায়গা নেবে। CHAR একটি নির্দিষ্ট দৈর্ঘ্যের স্ট্রিং ডাটা টাইপ। যদি স্ট্রিংয়ের দৈর্ঘ্য কম হয়, তাহলে বাকি জায়গা ফাঁকা দিয়ে পূর্ণ করা হয়, ফলে এটি বেশি জায়গা নেবে।

5. Explain the purpose of the WHERE clause in a SELECT statement?

নির্দিষ্ট শর্তের সাপেক্ষে ডাটাগুলি ফিল্টার করে ব্যবহারকারীকে প্রদান করা হয়

6. What are the LIMIT and OFFSET clauses used for?

LIMIT কুয়েরির ফলাফল সীমিত করতে ব্যবহার হয়.OFFSET কুয়েরির ফলাফলের প্রথম কিছু রেকর্ড বাদ দিয়ে শুরু হয়। limit * (offset - 1)

7. How can you modify data using UPDATE statements?

UPDATE  স্টেটমেন্ট ব্যবহার করে টেবিলের নির্দিষ্ট রেকর্ডে পরিবর্তন করা যায়। এর মাধ্যমে এক বা একাধিক কলামের মান আপডেট করা যায়।

8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?

প্রাইমারি এবং ফরেন কী এর মাদ্দমে সংশ্লিষ্ট টেবিল গুলার ডাটাকে একত্রে করে কাজ করা যায় এতে সহজেই এক টেবিল এর সাথে আরেক টেবিল এর সম্পর্ক করা যায়

9. Explain the GROUP BY clause and its role in aggregation operations?

GROUP BY ক্লজটি ডাটা গ্রুপ করার জন্য ব্যবহার হয়, সাধারণত একাধিক রেকর্ডের উপর অ্যাগ্রিগেট ফাংশন count,sum,min,max,avg প্রয়োগ করার জন্য। এটি একই মানের রেকর্ডগুলিকে একত্রিত করে।


10. How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL?

count() একটি কলামের মোট রেকর্ড সংখ্যা গণনা করে,sum()একটি নির্দিষ্ট কলামের মোট মান যোগ করে,avg() এটি একটি নির্দিষ্ট কলামের গড় মান হিসাব করে।