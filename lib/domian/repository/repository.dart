import 'package:medical_services/domian/model/modelLogin.dart';
import 'package:medical_services/domian/model/model_product.dart';

class DataRepository{

   getReports() async{
    final data = await ModelLogin.getreports();
    return data.map((product) => Data.fromJson(product)).toList();


  }

}