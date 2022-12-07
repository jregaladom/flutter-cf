class Sound {
  String title;
  String author;
  String cover;
  String time;
  Sound({this.time = '', this.author = '', this.cover = '', this.title = ''});
}

List<Sound> sounds = [
  Sound(
      title: 'Airbag',
      author: 'Radio Head',
      cover: 'assets/images/Radioheadokcomputer.png',
      time: '2:10'),
  Sound(
      title: 'Paranoid Android',
      author: 'Radio Head',
      cover: 'assets/images/Radioheadokcomputer.png',
      time: '6:23'),
  Sound(
      title: 'Exit Music',
      author: 'Radio Head',
      cover: 'assets/images/Radioheadokcomputer.png',
      time: '4:20'),
  Sound(
      title: 'Down is the New Up',
      author: 'Radio Head',
      cover: 'assets/images/Inrainbowscover.png',
      time: '4:59'),
  Sound(
      title: 'Electioneering',
      author: 'Radio Head',
      cover: 'assets/images/Radioheadokcomputer.png',
      time: '2:40'),
  Sound(
      title: 'The tTouris',
      author: 'Radio Head',
      cover: 'assets/images/Radioheadokcomputer.png',
      time: '5:24'),
];
