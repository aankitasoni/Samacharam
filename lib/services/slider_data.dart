import 'package:news_app_2/models/slider_model.dart';

List<SliderModel> getSliders(){
  List<SliderModel> slider = [];
  SliderModel categoryModel = new SliderModel();

  categoryModel.image = "images/business.jpg";
  categoryModel.name = "Bow To The Authority of Silenforce";
  slider.add(categoryModel);
  categoryModel = new SliderModel();


  categoryModel.image = "images/entertainment.jpg";
  categoryModel.name = "Bow To The Authority of Silenforce";
  slider.add(categoryModel);
  categoryModel = new SliderModel();

  categoryModel.image = "images/general.jpg";
  categoryModel.name = "Bow To The Authority of Silenforce";
  slider.add(categoryModel);
  categoryModel = new SliderModel();

  categoryModel.image = "images/health.jpg";
  categoryModel.name = "Bow To The Authority of Silenforce";
  slider.add(categoryModel);
  categoryModel = new SliderModel();

  categoryModel.image = "images/science.jpg";
  categoryModel.name = "Bow To The Authority of Silenforce";
  slider.add(categoryModel);
  categoryModel = new SliderModel();

  categoryModel.image = "images/sport.jpg";
  categoryModel.name = "Bow To The Authority of Silenforce";
  slider.add(categoryModel);
  categoryModel = new SliderModel();

  return slider;
}