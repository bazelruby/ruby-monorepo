# frozen_string_literal: true

module HelloWorld
  HELLO_WORLD = {
    afrikaans: 'Hello Wêreld!',
    albanian: 'Përshendetje Botë!',
    amharic: 'ሰላም ልዑል!',
    arabic: 'مرحبا بالعالم!',
    armenian: 'Բարեւ աշխարհ!',
    basque: 'Kaixo Mundua!',
    belarussian: 'Прывітанне Сусвет!',
    bengali: 'ওহে বিশ্ব!',
    bulgarian: 'Здравей свят!',
    catalan: 'Hola món!',
    chichewa: 'Moni Dziko Lapansi!',
    chinese: '你好世界！',
    croatian: 'Pozdrav svijete!',
    czech: 'Ahoj světe!',
    danish: 'Hej Verden!',
    dutch: 'Hallo Wereld!',
    english: 'Hello World!',
    estonian: 'Tere maailm!',
    finnish: 'Hei maailma!',
    french: 'Bonjour monde!',
    frisian: 'Hallo wrâld!',
    gaelic: 'Hàlo a Shaoghail!',
    georgian: 'გამარჯობა მსოფლიო!',
    german: 'Hallo Welt!',
    greek: 'Γειά σου Κόσμε!',
    hausa: 'Sannu Duniya!',
    hebrew: 'שלום עולם!',
    hindi: 'नमस्ते दुनिया!',
    hungarian: 'Helló Világ!',
    icelandic: 'Halló heimur!',
    igbo: 'Ndewo Ụwa!',
    indonesian: 'Halo Dunia!',
    italian: 'Ciao mondo!',
    japanese: 'こんにちは世界！',
    kazakh: 'Сәлем Әлем!',
    khmer: 'សួស្តី​ពិភពលោក!',
    kyrgyz: 'Салам дүйнө!',
    lao: 'ສະ​ບາຍ​ດີ​ຊາວ​ໂລກ!',
    latvian: 'Sveika pasaule!',
    lithuanian: 'Labas pasauli!',
    luxemburgish: 'Moien Welt!',
    macedonian: 'Здраво свету!',
    malay: 'Hai dunia!',
    malayalam: 'ഹലോ വേൾഡ്!',
    mongolian: 'Сайн уу дэлхий!',
    myanmar: 'မင်္ဂလာပါကမ္ဘာလောက!',
    nepali: 'नमस्कार संसार!',
    norwegian: 'Hei Verden!',
    pashto: 'سلام نړی!',
    persian: 'سلام دنیا!',
    polish: 'Witaj świecie!',
    portuguese: 'Olá Mundo!',
    punjabi: 'ਸਤਿ ਸ੍ਰੀ ਅਕਾਲ ਦੁਨਿਆ!',
    romanian: 'Salut Lume!',
    russian: 'Привет мир!',
    serbian: 'Здраво Свете!',
    sesotho: 'Lefatše Lumela!',
    sinhala: 'හෙලෝ වර්ල්ඩ්!',
    slovenian: 'Pozdravljen svet!',
    spanish: '¡Hola Mundo!',
    sundanese: 'Halo Dunya!',
    swahili: 'Salamu Dunia!',
    swedish: 'Hej världen!',
    tajik: 'Салом Ҷаҳон!',
    thai: 'สวัสดีชาวโลก!',
    turkish: 'Selam Dünya!',
    ukrainian: 'Привіт Світ!',
    uzbek: 'Salom Dunyo!',
    vietnamese: 'Chào thế giới!',
    welsh: 'Helo Byd!',
    xhosa: 'Molo Lizwe!',
    yiddish: ':      העלא וועלט!;',
    yoruba: 'Mo ki O Ile Aiye!',
    zulu: 'Sawubona Mhlaba!',
  }.freeze

  class << self
    def determine_language(ln = :english)
      return ln if HELLO_WORLD.key?(ln)

      ln = HELLO_WORLD.keys.map(&:to_s).map(&:downcase).find { |lan| lan.start_with?(ln.to_s.downcase) }
      ln || raise("Unknown language: #{ln} — use -L to see supported languages.")

      ln.to_sym
    end

    def hello_world_in(language = :english)
      ln = determine_language(language)
      HELLO_WORLD[ln]
    end
  end
end

require 'hello_world/version'

Dir.glob(File.expand_path('../hello_world/**/**.rb', __dir__)).each do |ruby_file|
  require(ruby_file)
end
