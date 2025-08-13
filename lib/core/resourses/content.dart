import 'package:fashion/core/resourses/assets_named_manager.dart';
import 'package:fashion/core/resourses/text_manager.dart';
import 'package:fashion/model/catogry_model.dart';
import 'package:fashion/model/product_details_model.dart';

class Content {
  static List<CatogryModel> catogryModel = [
    CatogryModel(image: ImageNamedManager.women, title: TextManager.women),
    CatogryModel(image: ImageNamedManager.men, title: TextManager.men),
    CatogryModel(image: ImageNamedManager.kids, title: TextManager.kids),
    CatogryModel(image: ImageNamedManager.home, title: TextManager.home),
    CatogryModel(image: ImageNamedManager.deals, title: TextManager.deals),
    CatogryModel(image: ImageNamedManager.women, title: TextManager.women),
    CatogryModel(image: ImageNamedManager.men, title: TextManager.men),
    CatogryModel(image: ImageNamedManager.kids, title: TextManager.kids),
    CatogryModel(image: ImageNamedManager.home, title: TextManager.home),
    CatogryModel(image: ImageNamedManager.deals, title: TextManager.deals),
  ];
  static List<ProductDetailsModel> productDetailsModel = [
    ProductDetailsModel(
      image: ImageNamedManager.model1,
      title: TextManager.topManBlack,
      price: "€45",
    ),
    ProductDetailsModel(
      image: ImageNamedManager.model2,
      title: TextManager.deepGrayEssentialRegul,
      price: "€23",
    ),
    ProductDetailsModel(
      image: ImageNamedManager.model3,
      title: TextManager.topManBlackWithTrous,
      price: "€14",
    ),
    ProductDetailsModel(
      image: ImageNamedManager.model4,
      title: TextManager.grayCoatAndWhitetshirt,
      price: "€20",
    ),
    ProductDetailsModel(
      image: ImageNamedManager.model5,
      title: TextManager.grayCoatAndWhitetshirt,
      price: "€ 35",
    ),
    ProductDetailsModel(
      image: ImageNamedManager.model6,
      title: TextManager.grayCoatAndWhitetshirt,
      price: "€ 35",
    ),
  ];
}
