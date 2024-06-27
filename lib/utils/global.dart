import 'package:flutter/material.dart';

int dropDownSelectedIndex = 0;

int value = 0;
int selectIndex = 0;
bool favorite = false;

var txtContact = TextEditingController();
var txtName = TextEditingController();
var txtReferral = TextEditingController();
var txtEmail = TextEditingController();
//40
List hotelList = [
  {
    "name": "OYO Hotel Maple",
    "location": "Hyderabad, Telangana",
    "city": "Hyderabad",
    "rent": 467,
    "amount": 2345,
    "par": 85,
    "tax": 156,
    "ret": 3.4,
    "address": "1010 Banjara Hills, Hyderabad, Telangana 500034",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Green Valley",
    "location": "Manali, Himachal Pradesh",
    "city": "Manali",
    "rent": 757,
    "amount": 3004,
    "par": 95,
    "tax": 198,
    "ret": 4.0,
    "address": "1111 Hadimba Temple Road, Manali, Himachal Pradesh 175131",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Horizon",
    "location": "Nainital, Uttarakhand",
    "city": "Nainital",
    "rent": 489,
    "amount": 5030,
    "par": 83,
    "tax": 115,
    "ret": 3.5,
    "address": "1212 Mall Road, Nainital, Uttarakhand 263002",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Metro",
    "location": "Lucknow, Uttar Pradesh",
    "city": "Lucknow",
    "rent": 507,
    "amount": 2045,
    "par": 95,
    "tax": 100,
    "ret": 3.7,
    "address": "1313 Hazratganj, Lucknow, Uttar Pradesh 226001",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Garden View",
    "location": "Bhopal, Madhya Pradesh",
    "city": "Bhopal",
    "rent": 667,
    "amount": 3045,
    "par": 70,
    "tax": 95,
    "ret": 4.3,
    "address": "1414 Shamla Hills, Bhopal, Madhya Pradesh 462002",
    "img":"asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Sea Breeze",
    "location": "Visakhapatnam, Andhra Pradesh",
    "city": "Visakhapatnam",
    "rent": 567,
    "amount": 4045,
    "par": 59,
    "tax": 140,
    "ret": 4.1,
    "address": "1515 Beach Road, Visakhapatnam, Andhra Pradesh 530001",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Sunrise",
    "location": "Agra, Uttar Pradesh",
    "city": "Agra",
    "rent": 977,
    "amount": 5045,
    "par": 79,
    "tax": 148,
    "ret": 3.6,
    "address": "1616 Taj Ganj, Agra, Uttar Pradesh 282001",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Royal Inn",
    "location": "Amritsar, Punjab",
    "city": "Amritsar",
    "rent": 867,
    "amount": 3045,
    "par": 50,
    "tax": 129,
    "ret": 4.6,
    "address": "1717 Golden Temple Road, Amritsar, Punjab 143006",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Royal Palace",
    "location": "Mumbai, Maharashtra",
    "city": "Mumbai",
    "rent": 767,
    "amount": 1045,
    "par": 74,
    "tax": 99,
    "ret": 4.8,
    "address": "123 Marine Drive, Mumbai, Maharashtra",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Central Inn",
    "location": "Delhi, Delhi",
    "city": "Delhi",
    "rent": 877,
    "amount": 3045,
    "par": 85,
    "tax": 162,
    "ret": 3.4,
    "address": "456 Connaught Place, Delhi, Delhi ",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Silver Sands",
    "location": "Goa, Goa",
    "city": "Goa",
    "rent": 567,
    "amount": 2345,
    "par": 70,
    "tax": 98,
    "ret": 4.0,
    "address": "789 Calangute Beach Road, Goa, Goa 403516",
    "img":"asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Green Park",
    "location": "Bangalore, Karnataka",
    "city": "Bangalore",
    "rent": 902,
    "amount": 3045,
    "par": 70,
    "tax": 85,
    "ret": 3.7,
    "address": "101 MG Road, Bangalore, Karnataka 560001",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Sunshine",
    "location": "Chennai, Tamil Nadu",
    "city": "Chennai",
    "rent": 950,
    "amount": 2405,
    "par": 80,
    "tax": 145,
    "ret": 3.5,
    "address": "202 Marina Beach, Chennai, Tamil Nadu 600002",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Lake View",
    "location": "Udaipur, Rajasthan",
    "city": "Udaipur",
    "rent": 500,
    "amount": 2100,
    "par": 96,
    "tax": 214,
    "ret": 3.2,
    "address": "303 Lake Pichola, Udaipur, Rajasthan 313001",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Heritage",
    "location": "Jaipur, Rajasthan",
    "city": "Jaipur",
    "rent": 300,
    "amount": 3425,
    "par": 94,
    "tax": 235,
    "ret": 3.9,
    "address": "404 Amer Fort Road, Jaipur, Rajasthan 302002",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Riverside",
    "location": "Kochi, Kerala",
    "city": "Kochi",
    "rent": 290,
    "amount": 3428,
    "par": 85,
    "tax": 120,
    "ret": 4.5,
    "address": "505 Marine Drive, Kochi, Kerala 682031",
    "img":"asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Blue Lagoon",
    "location": "Pondicherry, Pondicherry",
    "city": "Pondicherry",
    "rent": 800,
    "amount": 3537,
    "par": 50,
    "tax": 215,
    "ret": 4.7,
    "address": "606 Beach Road, Pondicherry, Pondicherry 605001",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Lotus",
    "location": "Ahmedabad, Gujarat",
    "city": "Ahmedabad",
    "rent": 478,
    "amount": 2472,
    "par": 95,
    "tax": 197,
    "ret": 4.8,
    "address": "707 SG Highway, Ahmedabad, Gujarat 380015",
    "img":"asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel City Plaza",
    "location": "Kolkata, West Bengal",
    "city": "Kolkata",
    "rent": 875,
    "amount": 2324,
    "par": 80,
    "tax": 251,
    "ret": 4.2,
    "address": "808 Park Street, Kolkata, West Bengal 700016",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Midtown",
    "location": "Pune, Maharashtra",
    "city": "Pune",
    "rent": 460,
    "amount": 2469,
    "par": 97,
    "tax": 319,
    "ret": 4.0,
    "address": "909 FC Road, Pune, Maharashtra 411004",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Willow",
    "location": " 4.3 km from center Thiruvananthapuram, Kerala",
    "city": "Thiruvananthapuram",
    "rent": 652,
    "amount": 45,
    "par": 79,
    "tax": 148,
    "ret": 3.6,
    "address": "6666 MG Road, Thiruvananthapuram, Kerala 695001",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Xanadu",
    "location": " 6.7 km from center Coimbatore, Tamil Nadu",
    "city": "Coimbatore",
    "rent": 467,
    "amount": 1025,
    "par": 85,
    "tax": 248,
    "ret": 4.5,
    "address": "6767 Avinashi Road, Coimbatore, Tamil Nadu 641018",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Yellow House",
    "location": " 2.3 km from center Srinagar, Jammu and Kashmir",
    "city": "Srinagar",
    "rent": 397,
    "amount": 1030,
    "par": 45,
    "tax": 18,
    "ret": 3.6,
    "address": "6868 Dal Lake Road, Srinagar, Jammu and Kashmir 190001",
    "img": "asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Zenith",
    "location": " 2.7 km from center Vadodara, Gujarat",
    "city": "Vadodara",
    "rent": 977,
    "amount": 5045,
    "par": 79,
    "tax": 138,
    "ret": 4.6,
    "address": "6969 Alkapuri Road, Vadodara, Gujarat 390007",
    "img":"asset/Images/oyo.jpg",
  },
  {
    "name": "OYO Hotel Aspen",
    "location": " 9.5 km from center Shimla, Himachal Pradesh",
    "city": "Shimla",
    "rent": 407,
    "amount": 2224,
    "par": 86,
    "tax": 138,
    "ret": 4.7,
    "address": "7070 Ridge Road, Shimla, Himachal Pradesh 171001",
    "img": "assets/img/hotel.jpg",
  },
  {
    "name": "OYO Hotel Beacon",
    "location": " 5.4 km from center Pune, Maharashtra",
    "city": "Pune",
    "rent": 230,
    "amount": 1334,
    "par": 74,
    "tax": 238,
    "ret": 3.0,
    "address": "7171 FC Road, Pune, Maharashtra 411004",
    "img": "assets/img/hotel.jpg",
  },
  {
    "name": "OYO Hotel Coral",
    "location": " 6.5 km from center Chandigarh, Punjab",
    "city": "Chandigarh",
    "rent": 304,
    "amount": 2035,
    "par": 85,
    "tax": 238,
    "ret": 4.6,
    "address": "7272 Sector 22, Chandigarh, Punjab 160022",
    "img": "assets/img/hotel.jpg",
  },
  {
    "name": "OYO Hotel Dewdrop",
    "location": " 4.6 km from center Kolkata, West Bengal",
    "city": "Kolkata",
    "rent": 784,
    "amount": 1062,
    "par": 95,
    "tax": 128,
    "ret": 3.6,
    "address": "7373 Park Street, Kolkata, West Bengal 700016",
    "img": "assets/img/hotel.jpg",
  },
  {
    "name": "OYO Hotel Emerald",
    "location": " 2.9 km from center Udaipur, Rajasthan",
    "city": "Udaipur",
    "rent": 402,
    "amount": 2034,
    "par": 84,
    "tax": 238,
    "ret": 3.0,
    "address": "7474 Fateh Sagar Lake Road, Udaipur, Rajasthan 313001",
    "img": "assets/img/hotel.jpg",
  },
  {
    "name": "OYO Hotel Falcon Crest",
    "location": " 0.3 km from center Manali, Himachal Pradesh",
    "city": "Manali",
    "rent": 459,
    "amount": 1145,
    "par": 95,
    "tax": 128,
    "ret": 4.0,
    "address": "7575 Manu Temple Road, Manali, Himachal Pradesh 175131",
    "img": "assets/img/hotel.jpg",
  },
  {
    "name": "OYO Hotel Greenfield",
    "location": " 3.4 km from center Bangalore, Karnataka",
    "city": "Bangalore",
    "rent": 760,
    "amount": 999,
    "par": 40,
    "tax": 355,
    "ret": 4.5,
    "address": "7676 Electronic City, Bangalore, Karnataka",
    "img": "assets/img/hotel.jpg",
  },
  {
    "name": "OYO Hotel Highland",
    "location": " 5.0 km from center Shillong, Meghalaya",
    "city": "Shillong",
    "rent": 865,
    "amount": 1345,
    "par": 59,
    "tax": 343,
    "ret": 4.0,
    "address": "7777 Laitumkhrah Main Road, Shillong, Meghalaya",
    "img": "assets/img/hotel.jpg",
  },
  {
    "name": "OYO Hotel Ivory",
    "location": " 3.1 km from center Kochi, Kerala",
    "city": "Kochi",
    "rent": 462,
    "amount": 2455,
    "par": 50,
    "tax": 342,
    "ret": 3.0,
    "address": "7878 MG Road, Kochi, Kerala ",
    "img": "assets/img/hotel.jpg",
  },
  {
    "name": "OYO Hotel Jade",
    "location": " 5.4 km from center Jaipur, Rajasthan",
    "city": "Jaipur",
    "rent": 769,
    "amount": 1205,
    "par": 89,
    "tax": 244,
    "ret": 2.6,
    "address": "7979 MI Road, Jaipur, Rajasthan ",
    "img": "assets/img/hotel.jpg",
  },
  {
    "name": "OYO Hotel Karma",
    "location": " 6.5 km from center Gangtok, Sikkim",
    "city": "Gangtok",
    "rent": 659,
    "amount": 3345,
    "par": 95,
    "tax": 238,
    "ret": 4.2,
    "address": "8080 MG Marg, Gangtok, Sikkim",
    "img": "assets/img/hotel.jpg",
  },
  {
    "name": "OYO Hotel Falcon Crest",
    "location": " 4.5 km from center Manali, Himachal Pradesh",
    "city": "Manali",
    "rent": 499,
    "amount": 2225,
    "par": 79,
    "tax": 241,
    "ret": 4.0,
    "address": "4949 Manu Temple Road, Manali, Himachal Pradesh 175131",
    "img": "assets/img/hotel.jpg",
  },
  {
    "name": "OYO Hotel Park Avenue",
    "location": " 0.6 km from center Nagpur, Maharashtra",
    "city": "Nagpur",
    "rent": 857,
    "amount": 2935,
    "par": 80,
    "tax": 148,
    "ret": 3.0,
    "address": "1818 Sitabuldi Main Road, Nagpur, Maharashtra 440012",
    "img": "assets/img/hotel.jpg",
  },
  {
    "name": "OYO Hotel Bliss",
    "location": "4.2 km from center Gurgaon, Haryana",
    "city": "Gurgaon",
    "rent": 695,
    "amount": 3725,
    "par": 75,
    "tax": 208,
    "ret": 2.0,
    "address": "1919 MG Road, Gurgaon, Haryana 122001",
    "img": "assets/img/hotel.jpg",
  },
  {
    "name": "OYO Hotel Comfort Stay",
    "location": " 2.3 km from center Noida, Uttar Pradesh",
    "city": "Noida",
    "rent": 787,
    "amount": 3745,
    "par": 85,
    "tax": 108,
    "ret": 3.9,
    "address": "2020 Sector 18, Noida, Uttar Pradesh 201301",
    "img": "assets/img/hotel.jpg",
  },
  {
    "name": "OYO Hotel Diamond",
    "location": " 5.0 km from center Surat, Gujarat",
    "city": "Surat",
    "rent": 405,
    "amount": 9325,
    "par": 70,
    "tax": 352,
    "ret": 4.0,
    "address": "2121 Ring Road, Surat, Gujarat 395002",
    "img": "assets/img/hotel.jpg",
  },

    {
      "name": "OYO Hotel Horizon View",
      "location": " 1.3 km from center Mysore, Karnataka",
      "city": "Mysore",
      "rent": 290,
      "amount": 3905,
      "par": 79,
      "tax": 148,
      "ret": 3.6,
      "address": "2525 Chamundi Hill Road, Mysore, Karnataka 570010",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Imperial",
      "location": " 2.3 km from center Jodhpur, Rajasthan",
      "city": "Jodhpur",
      "rent": 507,
      "amount": 5355,
      "par": 50,
      "tax": 138,
      "ret": 4.6,
      "address": "2626 Rai Ka Bagh, Jodhpur, Rajasthan 342006",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Jewel",
      "location": " 0.6 km from center Chandigarh, Punjab",
      "city": "Chandigarh",
      "rent": 1037,
      "amount": 5045,
      "par": 59,
      "tax": 243,
      "ret": 3.0,
      "address": "2727 Sector 17, Chandigarh, Punjab 160017",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Kings",
      "location": " 5.0 km from center Patna, Bihar",
      "city": "Patna",
      "rent": 2011,
      "amount": 6049,
      "par": 36,
      "tax": 372,
      "ret": 4.0,
      "address": "2828 Fraser Road, Patna, Bihar 800001",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Lake Palace",
      "location": " 3.4 km from center Bhopal, Madhya Pradesh",
      "city": "Bhopal",
      "rent": 1027,
      "amount": 4740,
      "par": 85,
      "tax": 334,
      "ret": 2.3,
      "address": "2929 VIP Road, Bhopal, Madhya Pradesh 462011",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Majestic",
      "location": " 3.5 km from center Raipur, Chhattisgarh",
      "city": "Raipur",
      "rent": 977,
      "amount": 5045,
      "par": 79,
      "tax": 148,
      "ret": 3.6,
      "address": "3030 Pandri Road, Raipur, Chhattisgarh 492001",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel New Era",
      "location": " 5.6 km from center Vadodara, Gujarat",
      "city": "Vadodara",
      "rent": 407,
      "amount": 1733,
      "par": 65,
      "tax": 332,
      "ret": 4.5,
      "address": "3131 Alkapuri Road, Vadodara, Gujarat 390007",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Opal",
      "location": " 6.0 km from center Ranchi, Jharkhand",
      "city": "Hyderabad",
      "rent": 1904,
      "amount": 5045,
      "par": 75,
      "tax": 357,
      "ret": 4.2,
      "address": "3232 Main Road, Ranchi, Jharkhand 834001",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Paradise",
      "location": " 2.3 km from center Bhubaneswar, Odisha",
      "city": "Bhubaneswar",
      "rent": 758,
      "amount": 2413,
      "par": 90,
      "tax": 233,
      "ret": 3.0,
      "address": "3333 Janpath Road, Bhubaneswar, Odisha 751001",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Queen",
      "location": " 5.0 km from center Dehradun, Uttarakhand",
      "city": "Dehradun",
      "rent": 876,
      "amount": 2935,
      "par": 67,
      "tax": 422,
      "ret": 3.2,
      "address": "3434 Rajpur Road, Dehradun, Uttarakhand 248001",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Regency",
      "location": " 0.9 km from center Jabalpur, Madhya Pradesh",
      "city": "Jabalpur",
      "rent": 765,
      "amount": 2531,
      "par": 56,
      "tax": 246,
      "ret": 4.0,
      "address": "3535 Civic Center, Jabalpur, Madhya Pradesh 482001",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Sapphire",
      "location": " 2.3 km from center Varanasi, Uttar Pradesh",
      "city": "Varanasi",
      "rent": 509,
      "amount": 1032,
      "par": 90,
      "tax": 328,
      "ret": 3.2,
      "address": "3636 Cantonment Road, Varanasi, Uttar Pradesh 221002",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Tranquil",
      "location": " 4.5 km from center Madurai, Tamil Nadu",
      "city": "Madurai",
      "rent": 874,
      "amount": 1914,
      "par": 75,
      "tax": 248,
      "ret": 4.0,
      "address": "3737 Anna Nagar, Madurai, Tamil Nadu 625020",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Urban",
      "location": " 2.8 km from center Gwalior, Madhya Pradesh",
      "city": "Gwalior",
      "rent": 748,
      "amount": 999,
      "par": 95,
      "tax": 123,
      "ret": 3.0,
      "address": "3838 City Center, Gwalior, Madhya Pradesh 474001",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Vista",
      "location": " 0.6 km from center Kanpur, Uttar Pradesh",
      "city": "Kanpur",
      "rent": 977,
      "amount": 5045,
      "par": 79,
      "tax": 148,
      "ret": 3.6,
      "address": "3939 Mall Road, Kanpur, Uttar Pradesh 208001",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Willow",
      "location": " 1.5 km from center Thiruvananthapuram, Kerala",
      "city": "Thiruvananthapuram",
      "rent": 768,
      "amount": 2145,
      "par": 78,
      "tax": 134,
      "ret": 4.9,
      "address": "4040 MG Road, Thiruvananthapuram, Kerala 695001",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Xanadu",
      "location": " 6.7 km from center Coimbatore, Tamil Nadu",
      "city": "Coimbatore",
      "rent": 977,
      "amount": 2045,
      "par": 79,
      "tax": 148,
      "ret": 3.6,
      "address": "4141 Avinashi Road, Coimbatore, Tamil Nadu 641018",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Yellow House",
      "location": " 5.0 km from center Srinagar, Jammu and Kashmir",
      "city": "Srinagar",
      "rent": 877,
      "amount": 1545,
      "par": 85,
      "tax": 239,
      "ret": 3.5,
      "address": "4242 Dal Lake Road, Srinagar, Jammu and Kashmir 190001",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Zenith",
      "location": " 2.3 km from center Vadodara, Gujarat",
      "city": "Vadodara",
      "rent": 599,
      "amount": 1025,
      "par": 50,
      "tax": 128,
      "ret": 4.6,
      "address": "4343 Alkapuri Road, Vadodara, Gujarat 390007",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Aspen",
      "location": " 2.3 km from center Shimla, Himachal Pradesh",
      "city": "Shimla",
      "rent": 977,
      "amount": 5045,
      "par": 79,
      "tax": 148,
      "ret": 3.6,
      "address": "4444 Ridge Road, Shimla, Himachal Pradesh 171001",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Beacon",
      "location": " 3.0 km from center Pune, Maharashtra",
      "city": "Pune",
      "rent": 689,
      "amount": 1305,
      "par": 85,
      "tax": 128,
      "ret": 4.6,
      "address": "4545 FC Road, Pune, Maharashtra 411004",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Coral",
      "location": " 5.0 km from center Chandigarh, Punjab",
      "city": "Chandigarh",
      "rent": 855,
      "amount": 1024,
      "par": 75,
      "tax": 231,
      "ret": 4.0,
      "address": "4646 Sector 22, Chandigarh, Punjab 160022",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Dewdrop",
      "location": " 2.3 km from center Kolkata, West Bengal",
      "city": "Kolkata",
      "rent": 977,
      "amount": 5045,
      "par": 79,
      "tax": 148,
      "ret": 3.6,
      "address": "4747 Park Street, Kolkata, West Bengal 700016",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Emerald",
      "location": " 5.5 km from center Udaipur, Rajasthan",
      "city": "Udaipur",
      "rent": 699,
      "amount": 1193,
      "par": 85,
      "tax": 284,
      "ret": 3.8,
      "address": "4848 Fateh Sagar Lake Road, Udaipur, Rajasthan 313001",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Greenfield",
      "location": " 0.9 km from center Bangalore, Karnataka",
      "city": "Bangalore",
      "rent": 207,
      "amount": 1435,
      "par": 86,
      "tax": 238,
      "ret": 4.7,
      "address": "5050 Electronic City, Bangalore, Karnataka 560100",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Highland",
      "location": " 5.6 km from center Shillong, Meghalaya",
      "city": "Shillong",
      "rent": 725,
      "amount": 1458,
      "par": 76,
      "tax": 258,
      "ret": 3.7,
      "address": "5151 Laitumkhrah Main Road, Shillong, Meghalaya 793003",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Ivory",
      "location": " 2.3 km from center Kochi, Kerala",
      "city": "Kochi",
      "rent": 294,
      "amount": 1345,
      "par": 94,
      "tax": 138,
      "ret": 4.6,
      "address": "5252 MG Road, Kochi, Kerala 682011",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Jade",
      "location": " 3.4 km from center Jaipur, Rajasthan",
      "city": "Jaipur",
      "rent": 977,
      "amount": 1045,
      "par": 79,
      "tax": 148,
      "ret": 3.6,
      "address": "5353 MI Road, Jaipur, Rajasthan 302001",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Karma",
      "location": " 4.5 km from center Gangtok, Sikkim",
      "city": "Gangtok",
      "rent": 844,
      "amount": 2145,
      "par": 79,
      "tax": 128,
      "ret": 3.2,
      "address": "5454 MG Marg, Gangtok, Sikkim 737101",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Luna",
      "location": " 4.7 km from center Aurangabad, Maharashtra",
      "city": "Aurangabad",
      "rent": 299,
      "amount": 1383,
      "par": 79,
      "tax": 148,
      "ret": 3.6,
      "address": "5555 Station Road, Aurangabad, Maharashtra 431001",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Mirage",
      "location": " 4.5 km from center Udupi, Karnataka",
      "city": "Udupi",
      "rent": 358,
      "amount": 1022,
      "par": 86,
      "tax": 238,
      "ret": 3.9,
      "address": "5656 Krishna Temple Road, Udupi, Karnataka 576101",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Nova",
      "location": " 0.9 km from center Rishikesh, Uttarakhand",
      "city": "Rishikesh",
      "rent": 295,
      "amount": 1639,
      "par": 56,
      "tax": 232,
      "ret": 4.5,
      "address": "5757 Tapovan, Rishikesh, Uttarakhand 249201",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Oasis",
      "location": " 6.5 km from center Pondicherry, Pondicherry",
      "city": "Pondicherry",
      "rent": 874,
      "amount": 929,
      "par": 45,
      "tax": 242,
      "ret": 4.5,
      "address": "5858 White Town, Pondicherry, Pondicherry 605001",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Pristine",
      "location": " 4.2 km from center Gurgaon, Haryana",
      "city": "Gurgaon",
      "rent": 769,
      "amount": 1425,
      "par": 59,
      "tax": 118,
      "ret": 3.8,
      "address": "5959 Sector 45, Gurgaon, Haryana 122003",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Quest",
      "location": " 5.8 km from center Kanpur, Uttar Pradesh",
      "city": "Kanpur",
      "rent": 205,
      "amount": 2195,
      "par": 78,
      "tax": 248,
      "ret": 4.0,
      "address": "6060 Civil Lines, Kanpur, Uttar Pradesh 208001",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Radiant",
      "location": " 7.0 km from center Lucknow, Uttar Pradesh",
      "city": "Lucknow",
      "rent": 977,
      "amount": 5045,
      "par": 79,
      "tax": 148,
      "ret": 3.6,
      "address": "6161 Gomti Nagar, Lucknow, Uttar Pradesh 226010",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Serene",
      "location": " 0.4 km from center Dehradun, Uttarakhand",
      "city": "Dehradun",
      "rent": 360,
      "amount": 1538,
      "par": 76,
      "tax": 438,
      "ret": 3.0,
      "address": "6262 Rajpur Road, Dehradun, Uttarakhand 248001",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Tranquil",
      "location": " 4.5 km from center Madurai, Tamil Nadu",
      "city": "Madurai",
      "rent": 249,
      "amount": 1232,
      "par": 96,
      "tax": 244,
      "ret": 4.6,
      "address": "6363 Anna Nagar, Madurai, Tamil Nadu 625020",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Urban",
      "location": " 0.5 km from center Gwalior, Madhya Pradesh",
      "city": "Gwalior",
      "rent": 899,
      "amount": 2345,
      "par": 89,
      "tax": 238,
      "ret": 4.2,
      "address": "6464 City Center, Gwalior, Madhya Pradesh 474001",
      "img": "assets/img/hotel.jpg",
    },
    {
      "name": "OYO Hotel Vista",
      "location": " 5.3 km from center Kanpur, Uttar Pradesh",
      "city": "Kanpur",
      "rent": 347,
      "amount": 1345,
      "par": 45,
      "tax": 138,
      "ret": 3.9,
      "address": "6565 Mall Road, Kanpur, Uttar Pradesh 208001",
      "img": "assets/img/hotel.jpg",
    },

];

//
//
//
// 40


List prachiimg=[
  {
    'imgs':'asset/images/banglore.jpeg',
  },
  {
    'imgs':'asset/images/chennai.jpeg',
  },
  {
    'imgs':'asset/images/dehli.jpeg',
  },
  {
    'imgs':'asset/images/gurgoan.jpeg',
  },
  {
    'imgs':'asset/images/haybd.jpeg',
  },
  {
    'imgs':'asset/images/banglore.jpeg',
  },
  {
    'imgs':'asset/images/banglore.jpeg',
  },
  {
    'imgs':'asset/images/banglore.jpeg',
  },
  {
    'imgs':'asset/images/banglore.jpeg',
  },
  {
    'imgs':'asset/images/banglore.jpeg',
  },
  {
    'imgs':'asset/images/banglore.jpeg',
    'imgs':'',
  },
];
