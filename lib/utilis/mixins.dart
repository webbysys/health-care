import 'package:flutter/cupertino.dart';

class Mixins{
  final List<Map<String, dynamic>> mainMenuItem = [
    {"title": "HEALTH\nTRACKER","images": "assets/home_screen/Health tracker.png"},
    {"title": "VACCINE","images": "assets/home_screen/Pharma.png"},
    {"title": "MEDICINE","images": "assets/home_screen/Pill.png"},
    {"title": "BLOOD BANK","images": "assets/home_screen/Drop of Blood.png"},
    {"title": "AMBULANCE","images": "assets/home_screen/Ambulance.png"},
    {"title": "DOCTOR APPOINMENT","images": "assets/home_screen/Planner.png"},
    {"title": "VIRTUAL LAB","images": "assets/home_screen/Microscope.png"},
    {"title": "HOSPITAL INFORMATION","images": "assets/home_screen/Hospital.png"},
    {"title": "OVERSEAS TREATMENT","images": "assets/home_screen/Camper.png"},
    {"title": "HEALTH TIPS","images": "assets/home_screen/Trust.png"},
    {"title": "HEALTH PROFILE","images": "assets/home_screen/Contact Details.png"},
    {"title": "ASK \nDOCTOR","images": "assets/home_screen/Short Hair Girl Question Mark.png"},
  ];
  final List<Map<String, dynamic>> doctorDetails = [
    {"name": "Dr. Abdullah Jh",
      "speciality":"Cardiologist",
      "images": "assets/doctor_image/Profile photo_1.png",
      "status":"online",
    },
    {"name": "Dr.Tania Jaman",
      "speciality":"Cardiologist",
      "images": "assets/doctor_image/Profile photo.png",
      "status":"online",
    },

  ];
  final List<Map<String,dynamic>> vaccineList = [
    {
      "name": "BCG",
      "Disease":"Tuberculosis",
      "images": "assets/vaccine/bcg.png",
    },
    {
      "name": "Hep B",
      "Disease":"Hepatitis B",
      "images": "assets/vaccine/hep-b.png",
    },
    {
      "name": "Polio	",
      "Disease":"Poliovirus",
      "images": "assets/vaccine/polio.png",
    },
    {
      "name": "pFizer",
      "Disease":"Covid-19",
      "images": "assets/vaccine/pfizer.png",
    },

  ];

  final List<Map<String, dynamic>> bloodBankDetails = [
    {"name": "Blood Bank 00",
      "address":"Chittagong",
      "images": "assets/blood_bank/bloodbank_photo.png",
      "status":"online",
    },
    {"name": "Blood Bank 00",
      "address":"Chittagong",
      "images": "assets/blood_bank/blood_bank_2.png",
      "status":"online",
    },
    {"name": "Blood Bank 01",
      "address":"Chittagong",
      "images": "assets/blood_bank/bloodbank_photo.png",
      "status":"online",
    },
    {"name": "Ctg Blood Bank",
      "address":"Chittagong",
      "images": "assets/blood_bank/blood_bank_2.png",
      "status":"online",
    },
  ];
  final List<Map<String, dynamic>> ambulanceDetails = [
    {"name": "Ambulance 00",
      "address":"Chittagong",
      "images": "assets/blood_bank/bloodbank_photo.png",
      "status":"online",
    },
    {"name": "Ambulance 00",
      "address":"Chittagong",
      "images": "assets/blood_bank/blood_bank_2.png",
      "status":"online",
    },
    {"name": "Ambulance 00",
      "address":"Chittagong",
      "images": "assets/blood_bank/bloodbank_photo.png",
      "status":"online",
    },
    {"name": "Ambulance 00",
      "address":"Chittagong",
      "images": "assets/blood_bank/blood_bank_2.png",
      "status":"online",
    },
  ];
  final List<Map<String, dynamic>> healthTips = [
    {"doctor name": "Dr. Hafsa JH",
      "title":"Domestic method of Covid 19 New variant...",
      "images": "assets/health_tips/Rectangle 15.png",
      "date":"10 Jun 2023",
      "view":"5k",
    },
    {"doctor name": "Dr. Hafsa JH",
      "title":"Domestic method of Covid 19 New variant...",
      "images": "assets/health_tips/Rectangle 15.png",
      "date":"10 Jun 2023",
      "view":"5k",
    },
    {"doctor name": "Dr. Hafsa JH",
      "title":"Domestic method of Covid 19 New variant...",
      "images": "assets/health_tips/Rectangle 15.png",
      "date":"10 Jun 2023",
      "view":"5k",
    },
    {"doctor name": "Dr. Hafsa JH",
      "title":"Domestic method of Covid 19 New variant...",
      "images": "assets/health_tips/Rectangle 15.png",
      "date":"10 Jun 2023",
      "view":"5k",
    },
    {"doctor name": "Dr. Hafsa JH",
      "title":"Domestic method of Covid 19 New variant...",
      "images": "assets/health_tips/Rectangle 15.png",
      "date":"10 Jun 2023",
      "view":"5k",
    },
    {"doctor name": "Dr. Hafsa JH",
      "title":"Domestic method of Covid 19 New variant...",
      "images": "assets/health_tips/Rectangle 15.png",
      "date":"10 Jun 2023",
      "view":"5k",
    },
    {"doctor name": "Dr. Hafsa JH",
      "title":"Domestic method of Covid 19 New variant...",
      "images": "assets/health_tips/Rectangle 15.png",
      "date":"10 Jun 2023",
      "date":"10 Jun 2023",
    },
  ];
  final List<Map<String, dynamic>> healthTipsAskdoctor = [
  {"doctor name": "Dr. Hafsa JH",
    "title":"Health tip 01",
  "text":"Domestic method of Covid 19 \n New variant...",
  "images": "assets/doctor_image/Profile photo.png",
  "date":"10 Jun 2023",
  "love":"11k",
    "comment":"36k",
    "view":"5k",
  },

    {"doctor name": "Dr. Anisuzzaman",
      "title":"Health tip 02",
      "text":"Domestic method of Covid 19 \n New variant...",
      "images": "assets/doctor_image/Profile photo_1.png",
      "date":"10 Jun 2023",
      "love":"11k",
      "comment":"36k",
      "view":"5k",


    },
    {"doctor name": "Dr. Hafsa JH",
      "title":"Health tip 01",
      "text":"Domestic method of Covid 19 \n New variant...",
      "images": "assets/doctor_image/Profile photo.png",
      "date":"10 Jun 2023",
      "love":"11k",
      "comment":"36k",
      "view":"5k",


    },


  ];
  final List<Map<String, dynamic>> medicineList = [
    {"name": "Aristobet 100gm",
      "group":"Ointment",
      "generic":"Betamethasone",
      "company":"Aristopharma Limited",
      "images": "assets/home_screen/medicine_list.png",
      "view": "5k"
    },
    {"name": "Aristobet 100gm",
      "group":"Ointment",
      "generic":"Betamethasone",
      "company":"Aristopharma Limited",
      "images": "assets/home_screen/medicine_list.png",
      "view": "5k"
    },

    {"name": "Aristobet 100gm",
      "group":"Ointment",
      "generic":"Betamethasone",
      "company":"Aristopharma Limited",
      "images": "assets/home_screen/medicine_list.png",
      "view": "5k"
    },

    {"name": "Aristobet 100gm",
      "group":"Ointment",
      "generic":"Betamethasone",
      "company":"Aristopharma Limited",
      "images": "assets/home_screen/medicine_list.png",
      "view": "5k"
    },

    {"name": "Aristobet 100gm",
      "group":"Ointment",
      "generic":"Betamethasone",
      "company":"Aristopharma Limited",
      "images": "assets/home_screen/medicine_list.png",
      "view": "5k"
    },

    {"name": "Aristobet 100gm",
      "group":"Ointment",
      "generic":"Betamethasone",
      "company":"Aristopharma Limited",
      "images": "assets/home_screen/medicine_list.png",
      "view": "5k"
    },



  ];
  //askdoctor Slider
  final List<String> askdoctorImages=[
    'assets/doctor_image/Profile photo.png',
    'assets/doctor_image/Profile photo_1.png'
  ];

  final List<String> District = ['Chittagong', 'Dhaka', 'Comilla', 'Feni', 'Bandharban'];
  final List<String> bloodGroup = ['A','B','O','AB'];
  final List<String> rhFactor = ['+(ve)','-(ve)'];
  final List<String> patientType = ['New','Existing'];
  final List<String> patientGender = ['Male','Female','Others'];
  final List<String> doctorAppoinmentSlots = ['8 am - 9am','9 am - 10 am','10 am - 11 am','11 am - 12 pm'];
  final List<String> virtualLabServiceType = ['CT scan','Blood Group','CVC'];
  final List<String> glucoseTestTimeperiod = ['Fasting','Random','2 Hours After BreakFast'];
}