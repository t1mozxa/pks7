import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _buildPngIcon(
              'assets/Дом.png', // Путь к изображению PNG
              width: 30,
              height: 30,
              isSelected: selectedIndex == 0,
            ),
            activeIcon: _buildPngIcon(
              'assets/Дом.png', // Путь к изображению PNG
              width: 30,
              height: 30,
              color: Color(0xFF1A6FEE),
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: _buildPngIcon(
              'assets/Корзина.png', // Путь к изображению PNG
              width: 24,
              height: 24,
              isSelected: selectedIndex == 1,
            ),
            activeIcon: _buildPngIcon(
              'assets/Корзина.png', // Путь к изображению PNG
              width: 24,
              height: 24,
              color: Color(0xFF1A6FEE),
            ),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: _buildPngIcon(
              'assets/Пользователь.png', // Путь к изображению PNG
              width: 32,
              height: 32,
              isSelected: selectedIndex == 2,
            ),
            activeIcon: _buildPngIcon(
              'assets/Пользователь.png', // Путь к изображению PNG
              width: 32,
              height: 32,
              color: Color(0xFF1A6FEE),
            ),
            label: 'Профиль',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Color(0xFF1A6FEE),
        unselectedItemColor: Colors.grey,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        iconSize: 34,
        selectedLabelStyle: TextStyle(fontSize: 12),
        unselectedLabelStyle: TextStyle(fontSize: 12),
      ),
    );
  }

  Widget _buildPngIcon(String assetName, {double? width, double? height, Color? color, bool isSelected = false}) {
    return Image.asset(
      assetName,
      color: color ?? (isSelected ? Color(0xFF1A6FEE) : Colors.grey),
      width: width,
      height: height,
    );
  }
}
