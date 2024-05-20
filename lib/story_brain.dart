//TODO: Step 6 - import story.dart
import 'story.dart';

//TOTO: Step 5 - membuat class StoryBrain
class StoryBrain {
  //TODO: Step 7 - membuat storyData sebagai private properties
  final List<Story> _storyData = [
    Story(
        storyTitle:
            'Ban mobil Anda pecah di jalan berkelok-kelok di antah berantah tanpa sinyal telepon seluler. Anda memutuskan untuk menumpang. Sebuah truk pickup berkarat berhenti di sebelah Anda. Seorang pria bertepi lebar dengan mata tanpa jiwa membukakan pintu penumpang untuk Anda dan bertanya: "Butuh tumpangan, Nak?".',
        choice1: 'Aku akan masuk. Terima kasih atas bantuannya!',
        choice2:
            'Lebih baik tanyakan padanya apakah dia seorang pembunuh dulu'),
    Story(
        storyTitle:
            'Dia mengangguk pelan, tidak terpengaruh oleh pertanyaan itu.',
        choice1: 'Setidaknya dia jujur. Aku akan masuk.',
        choice2: 'Tunggu, saya tahu cara menggantikan ban. '),
    Story(
        storyTitle:
            'Saat Anda mulai mengemudi, orang asing itu mulai membicarakan hubungannya dengan ibunya. Dia menjadi semakin marah dari menit ke menit. Dia memintamu untuk membuka glovebox. Di dalamnya Anda menemukan pisau berdarah, dua jari terputus, dan kaset Elton John. Dia meraih kotak sarung tangan.',
        choice1: 'Saya suka Elton John! Berikan dia kasetnya.',
        choice2: 'Itu dia atau aku! Anda mengambil pisau dan menusuknya.'),
    Story(
        storyTitle:
            'Apa? Benar-benar polisi yang keluar! Tahukah Anda bahwa kecelakaan lalu lintas merupakan penyebab kematian akibat kecelakaan nomor dua bagi sebagian besar kelompok usia dewasa?',
        choice1: 'ulangi',
        choice2: ''),
    Story(
        storyTitle:
            'Saat Anda menerobos pagar pembatas dan berbelok ke arah bebatuan bergerigi di bawah, Anda merenungkan kebijaksanaan yang meragukan dari menikam seseorang saat mereka sedang mengendarai mobil yang Anda tumpangi.',
        choice1: 'ulangi',
        choice2: ''),
    Story(
        storyTitle:
            'Anda terikat dengan si pembunuh sambil menyanyikan syair "Bisakah kamu merasakan cinta malam ini". Dia menurunkanmu di kota berikutnya. Sebelum Anda pergi, dia bertanya apakah Anda tahu tempat yang bagus untuk membuang mayat. Anda membalas: "Cobalah dermaga".',
        choice1: 'ulangi',
        choice2: ''),
  ];

  //TODO: Step 8 - membuat method getStory() yang return first storyTitle dari _storyData.
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  //TODO: Step 11 membuat method getChoice1 yang returnnya adalah choice1 dari _storyData
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  //TODO: Step 12 membuat method getChoice1 yang returnnya adalah choice2 dari _storyData
  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  //TODO: Step 16 - Membuat property storyNumber yang dimulai dari nol (0).
  // Digunakan untuk tracking story yang sedang dilihat

  //TODO: Step 25 - ganti storyNumber property ke private property sehingga hanya
  // story_brain.dart yang bisa mengakses
  int _storyNumber = 0;

  void restart() {
    _storyNumber = 0;
  }

  //TODO: Step 17 - membuat method nextStory()
  void nextStory(int choiceNumber) {
    //TODO: Step 21 - menggunakan story plan, update nextStory ganti storyNumber
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    }

    //TODO: Step 22 - di nextStory() jika storyNumber 3 atau 4 atau 5,
    // artinya game berakhir dan panggil method restart()
    else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  //TODO: Step 27 - membuat method buttonShouldBeVisible() untuk mengecek apakah storyNumber is 0 or 1 or 2
  bool buttonShouldBeVisible() {
    //You could also just check if (_storyNumber < 3)
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
