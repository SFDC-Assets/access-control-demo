// Create 4 system administrator users with the SDO_Platform_Demos permission set assigned to them
List<User> usersToCreate = new List<User>();
Profile adminProfile = [SELECT Id FROM Profile WHERE Name = 'System Administrator'];

Long randomLong = Crypto.getRandomLong();
String randomHexString = EncodingUtil.convertToHex(Blob.valueOf(String.valueOf(randomLong))).substring(0,8);
  
// Create Quentin Engineer
User user1 = new User();
user1.FirstName = 'Quentin';
user1.LastName = 'Engineer';
user1.UserName = 'quentin.engineer@example.com'+randomHexString;
user1.Email = 'quentin.engineer@example.com';
user1.Alias = 'quentin';
user1.ProfileId = adminProfile.Id;
user1.TimeZoneSidKey = 'GMT';
user1.LocaleSidKey = 'en_US';
user1.EmailEncodingKey = 'UTF-8';
user1.LanguageLocaleKey = 'en_US';
usersToCreate.add(user1);

// Create Sue Marketing
User user3 = new User();
user3.FirstName = 'Sue';
user3.LastName = 'Marketing';
user3.UserName = 'ue.marketing@example.com'+randomHexString;
user3.Email = 'ue.marketing@example.com';
user3.Alias = 'ue';
user3.ProfileId = adminProfile.Id;
user3.TimeZoneSidKey = 'GMT';
user3.LocaleSidKey = 'en_US';
user3.EmailEncodingKey = 'UTF-8';
user3.LanguageLocaleKey = 'en_US';
usersToCreate.add(user3);

// Create Cindy Sales
User user4 = new User();
user4.FirstName = 'Cindy';
user4.LastName = 'Sales';
user4.UserName = 'cindy.sales@example.com'+randomHexString;
user4.Email = 'cindy.sales@example.com';
user4.Alias = 'cindy';
user4.ProfileId = adminProfile.Id;
user4.TimeZoneSidKey = 'GMT';
user4.LocaleSidKey = 'en_US';
user4.EmailEncodingKey = 'UTF-8';
user4.LanguageLocaleKey = 'en_US';
usersToCreate.add(user4);

// Insert the users
insert usersToCreate;
