import 'package:flutter/material.dart';
import 'package:recipe_app/src/core/models/helper_model.dart';
import 'package:recipe_app/src/ui/widgets/helper_widget.dart';

class PopularRecipeScreen extends StatelessWidget {
  const PopularRecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<RecipeModel> recipes = [
      RecipeModel(
        author: 'Saiful Bahri',
        title: 'Nasi Goreng',
        category: 'Makanan',
        duration: '30 menit',
        favorite: true,
        imgAuthor:
            'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f',
        imgCover:
            'https://images.unsplash.com/photo-1680674774705-90b4904b3a7f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        ingredients: ['4 Telur', '1/2 Mentega', '1 Liter Air'],
        steps: [
          'Langkah 1: Siapkan bahan-bahan',
          'Langkah 2: Masak nasi',
          'Langkah 3: Campur bahan dan goreng',
        ],
      ),
      RecipeModel(
        author: 'Anggita',
        title: 'Rendang',
        category: 'Makanan',
        duration: '>60 menit',
        favorite: false,
        imgAuthor:
            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80',
        imgCover:
            'https://images.unsplash.com/photo-1620700668269-d3ad2a88f27e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cmVuZGFuZ3xlbnwwfHwwfHx8MA%3D%3D',
        ingredients: ['1 kg Daging Sapi', '2 Kelapa', '5 Siung Bawang Putih'],
        steps: [
          'Langkah 1: Siapkan daging sapi dan bumbu',
          'Langkah 2: Masak dengan api kecil',
          'Langkah 3: Aduk secara berkala',
        ],
      ),
      RecipeModel(
        author: 'Felicia',
        title: 'Sate Ayam',
        category: 'Makanan',
        duration: '45 menit',
        favorite: true,
        imgAuthor:
            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80',
        imgCover:
            'https://images.unsplash.com/photo-1645696301019-35adcc18fc21?q=80&w=1929&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        ingredients: ['500g Ayam', '50g Saus Kacang', '3 Siung Bawang Putih'],
        steps: [
          'Langkah 1: Marinasi ayam',
          'Langkah 2: Tusuk ayam dengan tusuk sate',
          'Langkah 3: Panggang hingga matang',
        ],
      ),
      RecipeModel(
        author: 'Agung Nugroho',
        title: 'Gado-Gado',
        category: 'Makanan',
        duration: '30 menit',
        favorite: false,
        imgAuthor:
            'https://images.unsplash.com/photo-1520341280432-4749d4d7bcf9',
        imgCover:
            'https://images.unsplash.com/photo-1707269561481-a4a0370a980a?q=80&w=1952&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        ingredients: ['200g Tahu', '100g Tauge', '50g Saus Kacang'],
        steps: [
          'Langkah 1: Siapkan sayuran',
          'Langkah 2: Masak tahu',
          'Langkah 3: Campur dengan saus kacang',
        ],
      ),
    ];
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisExtent: 260,
        childAspectRatio: 1,
        crossAxisSpacing: 20,
        mainAxisSpacing: 30,
      ),
      itemCount: recipes.length,
      itemBuilder: (BuildContext ctx, index) {
        return RecipeWidget(data: recipes[index]);
      },
    );
  }
}
