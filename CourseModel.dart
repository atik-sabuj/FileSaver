class CourseModel {
  CourseModel({
    required this.status,
    required this.data,
  });
  late final bool status;
  late final List<Data> data;

  CourseModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['data'] = data.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.slug,
    required this.trainingId,
    required this.batchNo,
    required this.fee,
    this.discount,
    this.promotionalDescription,
    required this.classNo,
    required this.hours,
    required this.seat,
    required this.startDate,
    required this.endDate,
    required this.applicationLastDate,
    required this.collaborativeCourse,
    this.partner,
    required this.schedule,
    required this.venue,
    this.batchBanner,
    required this.batchTrainer,
    this.imageAltText,
    required this.batchType,
    required this.featured,
    required this.publicationStatus,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.media,
    required this.training,
    required this.trainersInfo,
  });
  late final int id;
  late final String slug;
  late final String trainingId;
  late final String batchNo;
  late final String fee;
  late final String? discount;
  late final String? promotionalDescription;
  late final String classNo;
  late final String hours;
  late final String seat;
  late final String startDate;
  late final String endDate;
  late final String applicationLastDate;
  late final String collaborativeCourse;
  late final String? partner;
  late final String schedule;
  late final String venue;
  late final Null batchBanner;
  late final String batchTrainer;
  late final String? imageAltText;
  late final String batchType;
  late final String featured;
  late final String publicationStatus;
  late final Null deletedAt;
  late final String createdAt;
  late final String updatedAt;
  late final List<Media> media;
  late final Training training;
  late final List<TrainersInfo> trainersInfo;

  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    slug = json['slug'];
    trainingId = json['training_id'];
    batchNo = json['batch_no'];
    fee = json['fee'];
    discount = null;
    promotionalDescription = null;
    classNo = json['class_no'];
    hours = json['hours'];
    seat = json['seat'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    applicationLastDate = json['application_last_date'];
    collaborativeCourse = json['collaborative_course'];
    partner = null;
    schedule = json['schedule'];
    venue = json['venue'];
    batchBanner = null;
    batchTrainer = json['batch_trainer'];
    imageAltText = null;
    batchType = json['batch_type'];
    featured = json['featured'];
    publicationStatus = json['publication_status'];
    deletedAt = null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    media = List.from(json['media']).map((e)=>Media.fromJson(e)).toList();
    training = Training.fromJson(json['training']);
    trainersInfo = List.from(json['trainers_info']).map((e)=>TrainersInfo.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['slug'] = slug;
    _data['training_id'] = trainingId;
    _data['batch_no'] = batchNo;
    _data['fee'] = fee;
    _data['discount'] = discount;
    _data['promotional_description'] = promotionalDescription;
    _data['class_no'] = classNo;
    _data['hours'] = hours;
    _data['seat'] = seat;
    _data['start_date'] = startDate;
    _data['end_date'] = endDate;
    _data['application_last_date'] = applicationLastDate;
    _data['collaborative_course'] = collaborativeCourse;
    _data['partner'] = partner;
    _data['schedule'] = schedule;
    _data['venue'] = venue;
    _data['batch_banner'] = batchBanner;
    _data['batch_trainer'] = batchTrainer;
    _data['image_alt_text'] = imageAltText;
    _data['batch_type'] = batchType;
    _data['featured'] = featured;
    _data['publication_status'] = publicationStatus;
    _data['deleted_at'] = deletedAt;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['media'] = media.map((e)=>e.toJson()).toList();
    _data['training'] = training.toJson();
    _data['trainers_info'] = trainersInfo.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Media {
  Media({
    required this.id,
    required this.modelType,
    required this.modelId,
    required this.uuid,
    required this.collectionName,
    required this.name,
    required this.fileName,
    required this.mimeType,
    required this.disk,
    required this.conversionsDisk,
    required this.size,
    required this.manipulations,
    required this.customProperties,
    required this.generatedConversions,
    required this.responsiveImages,
    required this.orderColumn,
    required this.createdAt,
    required this.updatedAt,
    required this.originalUrl,
    required this.previewUrl,
  });
  late final int id;
  late final String modelType;
  late final String modelId;
  late final String uuid;
  late final String collectionName;
  late final String name;
  late final String fileName;
  late final String mimeType;
  late final String disk;
  late final String conversionsDisk;
  late final String size;
  late final List<dynamic> manipulations;
  late final List<dynamic> customProperties;
  late final GeneratedConversions generatedConversions;
  late final List<dynamic> responsiveImages;
  late final String orderColumn;
  late final String createdAt;
  late final String updatedAt;
  late final String originalUrl;
  late final String previewUrl;

  Media.fromJson(Map<String, dynamic> json){
    id = json['id'];
    modelType = json['model_type'];
    modelId = json['model_id'];
    uuid = json['uuid'];
    collectionName = json['collection_name'];
    name = json['name'];
    fileName = json['file_name'];
    mimeType = json['mime_type'];
    disk = json['disk'];
    conversionsDisk = json['conversions_disk'];
    size = json['size'];
    manipulations = List.castFrom<dynamic, dynamic>(json['manipulations']);
    customProperties = List.castFrom<dynamic, dynamic>(json['custom_properties']);
    generatedConversions = GeneratedConversions.fromJson(json['generated_conversions']);
    responsiveImages = List.castFrom<dynamic, dynamic>(json['responsive_images']);
    orderColumn = json['order_column'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    originalUrl = json['original_url'];
    previewUrl = json['preview_url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['model_type'] = modelType;
    _data['model_id'] = modelId;
    _data['uuid'] = uuid;
    _data['collection_name'] = collectionName;
    _data['name'] = name;
    _data['file_name'] = fileName;
    _data['mime_type'] = mimeType;
    _data['disk'] = disk;
    _data['conversions_disk'] = conversionsDisk;
    _data['size'] = size;
    _data['manipulations'] = manipulations;
    _data['custom_properties'] = customProperties;
    _data['generated_conversions'] = generatedConversions.toJson();
    _data['responsive_images'] = responsiveImages;
    _data['order_column'] = orderColumn;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['original_url'] = originalUrl;
    _data['preview_url'] = previewUrl;
    return _data;
  }
}

class GeneratedConversions {
  GeneratedConversions({
    required this.preview,
  });
  late final bool preview;

  GeneratedConversions.fromJson(Map<String, dynamic> json){
    preview = json['preview'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['preview'] = preview;
    return _data;
  }
}

class Training {
  Training({
    required this.id,
    required this.categoryId,
    required this.trainingTypeId,
    this.authorityId,
    this.levelId,
    required this.trainingName,
    required this.slug,
    required this.subTitle,
    required this.shortDesc,
    required this.metaDesc,
    required this.metaKeywords,
    required this.preRequisite,
    this.banner,
    required this.bannerAltText,
    this.breadcrumbBanner,
    this.breadcrumbBannerAltText,
    required this.publicationStatus,
    required this.certificateFormatNo,
    required this.createdAt,
    required this.updatedAt,
    this.authority,
    required this.modules,
    required this.trainingType,
    required this.media,
  });
  late final int id;
  late final String categoryId;
  late final String trainingTypeId;
  late final String? authorityId;
  late final String? levelId;
  late final String trainingName;
  late final String slug;
  late final String subTitle;
  late final String shortDesc;
  late final String metaDesc;
  late final String metaKeywords;
  late final String preRequisite;
  late final Null banner;
  late final String bannerAltText;
  late final Null breadcrumbBanner;
  late final String? breadcrumbBannerAltText;
  late final String publicationStatus;
  late final String certificateFormatNo;
  late final String createdAt;
  late final String updatedAt;
  late final Authority? authority;
  late final List<Modules> modules;
  late final TrainingType trainingType;
  late final List<Media> media;

  Training.fromJson(Map<String, dynamic> json){
    id = json['id'];
    categoryId = json['category_id'];
    trainingTypeId = json['training_type_id'];
    authorityId = null;
    levelId = null;
    trainingName = json['training_name'];
    slug = json['slug'];
    subTitle = json['sub_title'];
    shortDesc = json['short_desc'];
    metaDesc = json['meta_desc'];
    metaKeywords = json['meta_keywords'];
    preRequisite = json['pre_requisite'];
    banner = null;
    bannerAltText = json['banner_alt_text'];
    breadcrumbBanner = null;
    breadcrumbBannerAltText = null;
    publicationStatus = json['publication_status'];
    certificateFormatNo = json['certificate_format_no'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    authority = null;
    modules = List.from(json['modules']).map((e)=>Modules.fromJson(e)).toList();
    trainingType = TrainingType.fromJson(json['training_type']);
    media = List.from(json['media']).map((e)=>Media.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['category_id'] = categoryId;
    _data['training_type_id'] = trainingTypeId;
    _data['authority_id'] = authorityId;
    _data['level_id'] = levelId;
    _data['training_name'] = trainingName;
    _data['slug'] = slug;
    _data['sub_title'] = subTitle;
    _data['short_desc'] = shortDesc;
    _data['meta_desc'] = metaDesc;
    _data['meta_keywords'] = metaKeywords;
    _data['pre_requisite'] = preRequisite;
    _data['banner'] = banner;
    _data['banner_alt_text'] = bannerAltText;
    _data['breadcrumb_banner'] = breadcrumbBanner;
    _data['breadcrumb_banner_alt_text'] = breadcrumbBannerAltText;
    _data['publication_status'] = publicationStatus;
    _data['certificate_format_no'] = certificateFormatNo;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['authority'] = authority;
    _data['modules'] = modules.map((e)=>e.toJson()).toList();
    _data['training_type'] = trainingType.toJson();
    _data['media'] = media.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Authority {
  Authority({
    required this.id,
    required this.authorityName,
    required this.level,
    required this.desc,
    this.image,
    required this.imageAltText,
    required this.publicationStatus,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String authorityName;
  late final String level;
  late final String desc;
  late final Null image;
  late final String imageAltText;
  late final String publicationStatus;
  late final Null deletedAt;
  late final String createdAt;
  late final String updatedAt;

  Authority.fromJson(Map<String, dynamic> json){
    id = json['id'];
    authorityName = json['authority_name'];
    level = json['level'];
    desc = json['desc'];
    image = null;
    imageAltText = json['image_alt_text'];
    publicationStatus = json['publication_status'];
    deletedAt = null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['authority_name'] = authorityName;
    _data['level'] = level;
    _data['desc'] = desc;
    _data['image'] = image;
    _data['image_alt_text'] = imageAltText;
    _data['publication_status'] = publicationStatus;
    _data['deleted_at'] = deletedAt;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}

class Modules {
  Modules({
    required this.id,
    required this.trainingId,
    required this.moduleName,
    required this.moduleDesc,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String trainingId;
  late final String moduleName;
  late final String moduleDesc;
  late final String createdAt;
  late final String updatedAt;

  Modules.fromJson(Map<String, dynamic> json){
    id = json['id'];
    trainingId = json['training_id'];
    moduleName = json['module_name'];
    moduleDesc = json['module_desc'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['training_id'] = trainingId;
    _data['module_name'] = moduleName;
    _data['module_desc'] = moduleDesc;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}

class TrainingType {
  TrainingType({
    required this.id,
    required this.name,
    required this.tableName,
    required this.desc,
    required this.image,
    required this.imageAltText,
    required this.icon,
    required this.publicationStatus,
    required this.delationStatus,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String name;
  late final String tableName;
  late final String desc;
  late final String image;
  late final String imageAltText;
  late final String icon;
  late final String publicationStatus;
  late final String delationStatus;
  late final Null deletedAt;
  late final String createdAt;
  late final String updatedAt;

  TrainingType.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    tableName = json['table_name'];
    desc = json['desc'];
    image = json['image'];
    imageAltText = json['image_alt_text'];
    icon = json['icon'];
    publicationStatus = json['publication_status'];
    delationStatus = json['delation_status'];
    deletedAt = null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['table_name'] = tableName;
    _data['desc'] = desc;
    _data['image'] = image;
    _data['image_alt_text'] = imageAltText;
    _data['icon'] = icon;
    _data['publication_status'] = publicationStatus;
    _data['delation_status'] = delationStatus;
    _data['deleted_at'] = deletedAt;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}

class TrainersInfo {
  TrainersInfo({
    required this.id,
    required this.trainerName,
    required this.slug,
    required this.expertice,
    required this.phone,
    required this.email,
    required this.shortBio,
    this.experience,
    this.address,
    this.socialLink,
    this.trainerImage,
    this.imgAltText,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });
  late final int id;
  late final String trainerName;
  late final String slug;
  late final String expertice;
  late final String phone;
  late final String email;
  late final String shortBio;
  late final String? experience;
  late final String? address;
  late final String? socialLink;
  late final String? trainerImage;
  late final String? imgAltText;
  late final String createdAt;
  late final String updatedAt;
  late final Null deletedAt;

  TrainersInfo.fromJson(Map<String, dynamic> json){
    id = json['id'];
    trainerName = json['trainer_name'];
    slug = json['slug'];
    expertice = json['expertice'];
    phone = json['phone'];
    email = json['email'];
    shortBio = json['short_bio'];
    experience = null;
    address = null;
    socialLink = null;
    trainerImage = null;
    imgAltText = null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['trainer_name'] = trainerName;
    _data['slug'] = slug;
    _data['expertice'] = expertice;
    _data['phone'] = phone;
    _data['email'] = email;
    _data['short_bio'] = shortBio;
    _data['experience'] = experience;
    _data['address'] = address;
    _data['social_link'] = socialLink;
    _data['trainer_image'] = trainerImage;
    _data['img_alt_text'] = imgAltText;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['deleted_at'] = deletedAt;
    return _data;
  }
}
