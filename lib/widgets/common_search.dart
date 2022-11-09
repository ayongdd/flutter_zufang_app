import 'package:flutter/material.dart';
import 'package:hook_up_rent/widgets/common_image.dart';

class CommonSearch extends StatefulWidget {
  final bool? showLocation;
  final VoidCallback? goBackCallback;
  final String? inputValue;
  final String? defaultInputValue;
  final Function? onCancel;
  final bool? showMap;
  final Function? onSearch;
  final ValueChanged<String>? onSearchSubmit;

  CommonSearch(
      {Key? key,
      this.showLocation,
      this.goBackCallback,
      this.inputValue,
      this.defaultInputValue,
      this.onCancel,
      this.showMap,
      this.onSearch,
      this.onSearchSubmit})
      : super(key: key);
  @override
  State<CommonSearch> createState() => _CommonSearchState();
}

class _CommonSearchState extends State<CommonSearch> {
  TextStyle style =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black);
//  var _controller = TextEditingController(text: widget.inputValue);
  TextEditingController? _controller;
  String _searchWord = '';
  // FocusNode? _focusNode; //焦点实例
  var _focusNode = FocusNode();

   @override
    void initState() {
      super.initState();
      _controller = TextEditingController(text: widget.inputValue); //设置默认值
    }

  void _onClean() {
    setState(() {
      _controller!.clear();
      _searchWord = '';
    });
  }
  Widget location() {
    return Row(
      children: [
        CommonImage(
          "static/icons/search_localtion.png",
          width: 30,
          fit: BoxFit.fill,
        ),
        Padding(padding: EdgeInsets.only(right: 1)),
        Text(
          "北京",
          style: style,
        ),
        Padding(padding: EdgeInsets.only(right: 3)),
      ],
    );
  }

  Widget inputWidget(BuildContext context) {
    return Expanded(
      child: Container(
        height: 35,
        decoration: BoxDecoration(
            color: Color(0xffeeeeee),
            borderRadius: BorderRadius.all(Radius.circular(15))
            // border: Border.all(width: 1),
            ),
        child: TextField(
          focusNode: _focusNode,
          controller: _controller,
          onTap: () {
            if(null == widget.onSearchSubmit ) {
               _focusNode.unfocus();
            }
            widget.onSearch!();
          },
          onSubmitted: widget.onSearchSubmit,
          onChanged: (value) {
            setState(() {
              _searchWord = value;
            });
          },
          textInputAction: TextInputAction.search, //键盘确定按钮变成搜索
          decoration: InputDecoration(
            icon: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                Icons.search,
                color: Colors.black,
                size: 24,
              ),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(width: 0, style: BorderStyle.none),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            // prefixIcon: Icon(Icons.search,color: Colors.black,size: 24,), //前置图标 间距过大 默认size48造成的 用icon可以修复
            suffixIcon:
             _searchWord != ''? 
            InkWell(
                    onTap: () {
                      _onClean();
                    },
                    child: Icon(
                      Icons.clear,
                      color: Colors.grey,
                      size: 24,
                    ))
                : SizedBox(), //后置图标
            hintText: "请输入搜索内容",
            hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
            hintMaxLines: 1,
            // isDense: true,
            contentPadding: EdgeInsets.only(top: 8, left: -15.0),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          if (widget.showLocation != null) location(),
          //  Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          if (widget.goBackCallback != null)
            GestureDetector(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  )),
              onTap:widget.goBackCallback,
            ),
          inputWidget(context),
          //  Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          if (widget.onCancel != null)
            InkWell(
              onTap: () {},
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "取消",
                    style: style,
                  )),
            ),
          if (widget.showMap != null)
            InkWell(
              onTap: () {},
              child: CommonImage(
                "static/icons/widget_search_bar_map.png",
                width: 50,
                fit: BoxFit.fill,
              ),
            )
        ],
      ),
    );
  }
}
