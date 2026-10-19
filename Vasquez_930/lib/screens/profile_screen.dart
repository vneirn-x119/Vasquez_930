import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const blue = Color(0xFF0866FF);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Cover photo and profile picture
              SizedBox(
                height: 245,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        'https://images.unsplash.com/photo-1519608487953-e999c86e7455?w=1000',
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) =>
                            Container(color: Colors.blueGrey),
                      ),
                    ),
                    Positioned(
                      top: 12,
                      left: 12,
                      right: 12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _circleButton(Icons.menu),
                          Row(
                            children: [
                              _circleButton(Icons.edit_outlined),
                              const SizedBox(width: 8),
                              _circleButton(Icons.search),
                              const SizedBox(width: 8),
                              _circleButton(Icons.more_horiz),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -42,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const CircleAvatar(
                                radius: 70,
                                backgroundColor: Color(0xFFDCE5F5),
                                child: Icon(
                                  Icons.person,
                                  size: 90,
                                  color: Color(0xFF245AA5),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 2,
                              bottom: 3,
                              child: _smallCamera(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 49),

              // Name and profile actions
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Al Coholic',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 8),
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.grey.shade200,
                          child:
                              const Icon(Icons.keyboard_arrow_down, size: 20),
                        ),
                      ],
                    ),
                    const Text('7 posts'),
                    const SizedBox(height: 8),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on, size: 16),
                        SizedBox(width: 4),
                        Text('Iloilo City'),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon:
                                const Icon(Icons.add_circle_outline, size: 18),
                            label: const Text('Add to story'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: blue,
                              foregroundColor: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.edit, size: 16),
                            label: const Text('Edit profile'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFE4E6EB),
                              foregroundColor: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // Privacy notice
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  child: const Icon(Icons.shield, color: Colors.black),
                ),
                title: const Text(
                  'You locked your profile',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: const Text(
                  'Learn more',
                  style: TextStyle(color: blue),
                ),
                dense: true,
              ),

              const Divider(height: 1),

              // Profile tabs
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    _tab('All', selected: true),
                    _tab('Photos'),
                    _tab('Reels'),
                  ],
                ),
              ),

              const Divider(height: 1),

              // Personal details
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 14, 16, 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Personal details',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit_outlined, size: 20),
                    ),
                  ],
                ),
              ),
              _detail(Icons.location_on_outlined, 'Iloilo City, Philippines'),
              _detail(Icons.home_outlined, 'Bauang, La Union'),
              _detail(Icons.calendar_today_outlined, 'October 17, 2006'),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _circleButton(IconData icon) {
    return CircleAvatar(
      radius: 18,
      backgroundColor: Colors.black45,
      child: Icon(icon, color: Colors.white, size: 21),
    );
  }

  static Widget _smallCamera() {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: const BoxDecoration(
        color: Color(0xFFE4E6EB),
        shape: BoxShape.circle,
      ),
      child: const Icon(Icons.camera_alt, size: 16),
    );
  }

  static Widget _tab(String label, {bool selected = false}) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFE7F3FF) : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: selected ? const Color(0xFF0866FF) : Colors.black,
          fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
        ),
      ),
    );
  }

  static Widget _detail(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      child: Row(
        children: [
          Icon(icon, size: 22),
          const SizedBox(width: 16),
          Text(text),
        ],
      ),
    );
  }
}
