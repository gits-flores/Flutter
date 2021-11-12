class HomeMenu{
  String title;
  String desc;
  String images;

  HomeMenu({
      this.title,
      this.desc,
      this.images
  });
}

var homeMenuList = [
  HomeMenu(
    title: "Personal Growth",
    desc: "Temukan serta pahami kekuatan dan kelemahan",
    images: "assets/images/homesatu.png"
  ),
  HomeMenu(
    title: "Relationship",
    desc: "Perdalam hubungan bersama orang lain",
    images: "assets/images/homedua.png"
  ),
  HomeMenu(
    title: "Careers",
    desc: "Menjadi lebih baik dalam merencanakan tujuan",
    images: "assets/images/hometiga.png"
  )
];