import 'package:flutter/material.dart';
import 'package:taskapp/src/core/utils/constants/app-keys.dart';
import 'package:taskapp/src/core/utils/enum/app-enum.dart';

class FilterButton extends StatelessWidget {
  final PopupMenuItemSelected<VisibilityFilter> onSelected;
  final VisibilityFilter activeFilter;
  final bool isActive;

  FilterButton({this.onSelected, this.activeFilter, this.isActive, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final defaultStyle = theme.textTheme.bodyText2;
    final activeStyle = theme.textTheme.bodyText2.copyWith(
      color: theme.accentColor,
    );
    final button = _Button(
      onSelected: onSelected,
      activeFilter: activeFilter,
      activeStyle: activeStyle,
      defaultStyle: defaultStyle,
    );
    return AnimatedOpacity(
      opacity: isActive ? 1.0 : 0.0,
      duration: Duration(milliseconds: 150),
      child: isActive ? button : IgnorePointer(child: button),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    Key key,
    @required this.onSelected,
    @required this.activeFilter,
    @required this.activeStyle,
    @required this.defaultStyle,
  }) : super(key: key);

  final PopupMenuItemSelected<VisibilityFilter> onSelected;
  final VisibilityFilter activeFilter;
  final TextStyle activeStyle;
  final TextStyle defaultStyle;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<VisibilityFilter>(
      key: AppKeys.filterButton,
      tooltip: "FilterTodos",
      onSelected: onSelected,
      itemBuilder: (BuildContext context) {
        return <PopupMenuItem<VisibilityFilter>>[
          PopupMenuItem<VisibilityFilter>(
            key: AppKeys.allFilter,
            value: VisibilityFilter.showAll,
            child: Text(
              "Show All",
              style: activeFilter == VisibilityFilter.showAll
                  ? activeStyle
                  : defaultStyle,
            ),
          ),
          PopupMenuItem<VisibilityFilter>(
            key: AppKeys.activeFilter,
            value: VisibilityFilter.showActive,
            child: Text(
              "Show Active",
              style: activeFilter == VisibilityFilter.showActive
                  ? activeStyle
                  : defaultStyle,
            ),
          ),
          PopupMenuItem<VisibilityFilter>(
            key: AppKeys.completedFilter,
            value: VisibilityFilter.showCompleted,
            child: Text(
              "Show Completed",
              style: activeFilter == VisibilityFilter.showCompleted
                  ? activeStyle
                  : defaultStyle,
            ),
          ),
        ];
      },
      icon: Icon(Icons.filter_list),
    );
  }
}
