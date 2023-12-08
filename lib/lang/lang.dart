import 'package:flutter/cupertino.dart';
import 'package:medical_services/main.dart';

class Lang extends ChangeNotifier {
  String _lang = lang;

  getLang() {
    return _lang;
  }

  setLang(String lang) {
    _lang = lang;
    notifyListeners();
  }

  String getMyprofile() {
    if (getLang() == 'AR') {
      return 'حسابي';
    }
    return "My Profile";
  }

  String getlanguage() {
    if (getLang() == 'AR') {
      return 'اللغه';
    }
    return "Language";
  }

  String getfavorite() {
    if (getLang() == 'AR') {
      return 'الدكتور المفضل';
    }
    return "Favorite doctor";
  }

  String gethelp() {
    if (getLang() == 'AR') {
      return 'مركز المساعده';
    }
    return "help center";
  }

  String getsignOut() {
    if (getLang() == 'AR') {
      return 'تسجيل الخروج';
    }
    return "Sign Out";
  }

  String getsearch() {
    if (getLang() == 'AR') {
      return 'اكتب رسالتك هنا ...';
    }
    return "type your message here ...";
  }

  String getsearchHome() {
    if (getLang() == 'AR') {
      return 'اهم الاخبار والمعلومات الصحيه';
    }
    return "The most important news and health information";
  }

  String getclinic() {
    if (getLang() == 'AR') {
      return 'حجز بيان العيادة';
    }
    return "Book a clinic statement";
  }

  String gethelpHome1() {
    if (getLang() == 'AR') {
      return 'كيف يمكن أن تساعدك';
    }
    return "How Can Help you";
  }

  String gethelpHome2() {
    if (getLang() == 'AR') {
      return 'اليوم؟';
    }
    return "To day?";
  }

  String getNews() {
    if (getLang() == 'AR') {
      return 'الاخبار';
    }
    return "News";
  }

  String getpharmacy() {
    if (getLang() == 'AR') {
      return 'صيدليه';
    }
    return "pharmacy";
  }

  String getMaps() {
    if (getLang() == 'AR') {
      return 'البحث عن ..';
    }
    return "searching for ..";
  }

  String getmajors() {
    if (getLang() == 'AR') {
      return 'التخصصات الأكثر اختيارًا';
    }
    return "the most chosen majors";
  }

  String getleather() {
    if (getLang() == 'AR') {
      return 'جلديه';
    }
    return "leather";
  }

  String getsurgery() {
    if (getLang() == 'AR') {
      return 'جراحة';
    }
    return "surgery";
  }

  String getesoteric() {
    if (getLang() == 'AR') {
      return 'باطنة';
    }
    return "inside";
  }

  String getnoseAndEar() {
    if (getLang() == 'AR') {
      return 'باطنة';
    }
    return "nose and ear";
  }

  String getbones() {
    if (getLang() == 'AR') {
      return 'عظام';
    }
    return "bones";
  }

  String getheartDisease() {
    if (getLang() == 'AR') {
      return 'امراض القلب';
    }
    return "heart disease";
  }

  String getHome() {
    if (getLang() == 'AR') {
      return 'الصفحه الرئيسية';
    }
    return "Home";
  }

  String getreports() {
    if (getLang() == 'AR') {
      return 'التقارير';
    }
    return "Reports";
  }

  String getChat() {
    if (getLang() == 'AR') {
      return 'الدردشات';
    }
    return "Chats";
  }

  String getsetting() {
    if (getLang() == 'AR') {
      return 'الاعدادات';
    }
    return "settings";
  }

  String getDrugs1() {
    if (getLang() == 'AR') {
      return 'اطلب الأدوية بأسهل طريقة';
    }
    return "Order your medicines in the easiest way";
  }

  String getDrugs2() {
    if (getLang() == 'AR') {
      return 'ابحث عن الدواء الخاص بك';
    }
    return "Find your medication";
  }

  String getSection() {
    if (getLang() == 'AR') {
      return 'البحث عن طريق القسم';
    }
    return "Search by section";
  }

  String getVitamins() {
    if (getLang() == 'AR') {
      return 'الفيتامينات والتغذيه';
    }
    return "Vitamins and nutrition";
  }

  String getMedications() {
    if (getLang() == 'AR') {
      return 'أدويه بدون روشته';
    }
    return "Medications without a prescription";
  }

  String getfighting() {
    if (getLang() == 'AR') {
      return 'مكافحه العدوي';
    }
    return "Fighting the infection";
  }

  String getwomen() {
    if (getLang() == 'AR') {
      return 'العنايه بالمرأة';
    }
    return "Taking care of women";
  }

  String gethair() {
    if (getLang() == 'AR') {
      return 'العنايه بالشعر';
    }
    return "Hair care";
  }

  String getman() {
    if (getLang() == 'AR') {
      return 'العنايه بالرجل';
    }
    return "Taking care of the man";
  }

  String getDermatologists() {
    if (getLang() == 'AR') {
      return 'دكاتره جلديه';
    }
    return "Dermatologists";
  }

  String getDoctorsofsurgery() {
    if (getLang() == 'AR') {
      return 'دكاتره جراحة';
    }
    return "Doctors of surgery";
  }

  String getInternaldoctors() {
    if (getLang() == 'AR') {
      return 'دكاتره باطنة';
    }
    return "Internal doctors";
  }

  String getEarandnosedoctors() {
    if (getLang() == 'AR') {
      return 'دكاتره انف واذن';
    }
    return "Ear and nose doctors";
  }

  String getOrthopedicdoctors() {
    if (getLang() == 'AR') {
      return 'دكاتره عظام';
    }
    return "Orthopedic doctors";
  }

  String getCardiologists() {
    if (getLang() == 'AR') {
      return 'دكاتره امراض القلب';
    }
    return "Cardiologists";
  }

  String getNotifications() {
    if (getLang() == 'AR') {
      return 'الاشعارات';
    }
    return "Notifications";
  }

  String getshoppingbasket() {
    if (getLang() == 'AR') {
      return 'سلة التسوق';
    }
    return "shopping basket";
  }

  String getDOCTOR() {
    if (getLang() == 'AR') {
      return 'الطبيب';
    }
    return "DOCTOR";
  }

  String getCLIENT() {
    if (getLang() == 'AR') {
      return 'مريض';
    }
    return "Patient";
  }

  String getSignIn() {
    if (getLang() == 'AR') {
      return 'تسجيل الدخول';
    }
    return "Sign In";
  }

  String getfightingtheinfection() {
    if (getLang() == 'AR') {
      return 'مكافحة العدوي';
    }
    return "Fighting the infection";
  }

  String getProductType() {
    if (getLang() == 'AR') {
      return 'نوع المنتج';
    }
    return "Product Type";
  }

  String getfacemasks() {
    if (getLang() == 'AR') {
      return 'كمامات الوجه';
    }
    return "Face masks";
  }

  String gethairconditioner() {
    if (getLang() == 'AR') {
      return 'بلسم الشعر';
    }
    return "Hair conditioner";
  }

  String gethaircare() {
    if (getLang() == 'AR') {
      return 'العنايه بالشعر';
    }
    return "Hair care";
  }

  String getHairshampoo() {
    if (getLang() == 'AR') {
      return 'شامبو الشعر';
    }
    return "Hair shampoo";
  }

  String gethaircream() {
    if (getLang() == 'AR') {
      return 'كريم الشعر';
    }
    return "Hair cream";
  }

  String getAlcoholandsterilization() {
    if (getLang() == 'AR') {
      return 'الكحول والتعقيم';
    }
    return "Alcohol and sterilization";
  }

  String getTakingcareoftheman() {
    if (getLang() == 'AR') {
      return 'العنايه بالرجل';
    }
    return "Taking care of the man";
  }

  String getPersonalcare() {
    if (getLang() == 'AR') {
      return 'العنايه الشخصيه';
    }
    return "Personal care";
  }

  String getsexualhealth() {
    if (getLang() == 'AR') {
      return 'الصحة الجنسية';
    }
    return "Sexual health";
  }

  String gethairtrimming() {
    if (getLang() == 'AR') {
      return 'تهذيب الشعر ';
    }
    return "Hair trimming";
  }

  String getVitaminsandnutrition() {
    if (getLang() == 'AR') {
      return 'الفيتامينات والتغذيه';
    }
    return "Vitamins and nutrition";
  }

  String getVitaminsupplements() {
    if (getLang() == 'AR') {
      return 'فيتامينات ومكملات غذائيه';
    }
    return "Vitamins and nutritional supplements";
  }

  String getVitaminsfromAtoZ() {
    if (getLang() == 'AR') {
      return 'فيتامينات من الالف الي الياء';
    }
    return "Vitamins from A to Z";
  }

  String getCommonsymptomatictreatments() {
    if (getLang() == 'AR') {
      return 'علاجات أمراض شائعه';
    }
    return "Common disease treatments";
  }

  String getfirstaid() {
    if (getLang() == 'AR') {
      return 'الاسعافات الاوليه';
    }
    return "First aid";
  }

  String getMedicineswithoutaprescription() {
    if (getLang() == 'AR') {
      return 'أدويه بدون روشتة';
    }
    return "Medicines without a prescription";
  }

  String getPaintreatments() {
    if (getLang() == 'AR') {
      return 'علاجات الالم';
    }
    return "Pain treatments";
  }

  String getSearchbysection() {
    if (getLang() == 'AR') {
      return 'ابحث بالقسم';
    }
    return "Search by section";
  }

  String getTakingcareofwomen() {
    if (getLang() == 'AR') {
      return 'العناية بالمرأة';
    }
    return "Taking care of women";
  }

  String getHairandskin() {
    if (getLang() == 'AR') {
      return 'الشعر والبشرة';
    }
    return "Hair and skin";
  }

  String gethealthandbeauty() {
    if (getLang() == 'AR') {
      return 'الصحه والجمال';
    }
    return "health and beauty";
  }

  // String getTakingcareofwomen(){
  //   if(getLang() == 'AR'){
  //     return 'العناية بالمراة';
  //   }
  //   return "Taking care of women";
  // }
  String getAlcoholandsterilizationSearchbycategory() {
    if (getLang() == 'AR') {
      return 'ابحث بالفئه';
    }
    return "Search by category";
  }
}
