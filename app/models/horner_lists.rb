class HornerLists
  def next_book(book)
    BOOK_PROGRESSION[book_key(book)]
  end

  def list(number)
    LIST_BOOKS[number.to_s]
  end

  private

  def book_key(book)
    book_key = book.to_s.dup
    book_key.gsub!(/^1/, 'first')
    book_key.gsub!(/^2/, 'second')
    book_key.gsub!(/^3/, 'third')
    book_key.gsub!(' ', '_')
    book_key.downcase!
    book_key.to_sym
  end

  LIST_BOOKS = {
    "1" => ['Matthew', 'Mark', 'Luke', 'John'],
    "2" => ['Genesis', 'Exodus', 'Leviticus', 'Numbers', 'Deuteronomy'],
    "3" => ['Romans', '1 Corinthians', '2 Corinthians', 'Galatians', 'Ephesians', 'Philippians', 'Colossians', 'Hebrews'],
    "4" => ['1 Thessalonians', '2 Thessalonians', '1 Timothy', '2 Timothy', 'Titus', 'Philemon', 'James', '1 Peter', '2 Peter', '1 John', '2 John', '3 John', 'Jude', 'Revelation'],
    "5" => ['Job', 'Eccesiastes', 'Song of Solomon'],
    "6" => ['Psalms'],
    "7" => ['Proverbs'],
    "8" => ['Joshua', 'Judges', 'Ruth', '1 Samuel', '2 Samuel', '1 Kings', '2 Kings', '1 Chronicles', '2 Chronicles', 'Ezra', 'Nehemiah', 'Esther'],
    "9" => ['Isaiah', 'Jeremiah', 'Lamentations', 'Ezekiel', 'Daniel', 'Hosea', 'Joel', 'Amos', 'Obadiah', 'Jonah', 'Micah', 'Nahum', 'Habakkuk', 'Zephaniah', 'Haggai', 'Zechariah', 'Malachi'],
    "10" => ['Acts']
  }

  BOOK_PROGRESSION = {
    matthew: 'Mark',
    mark: 'Luke',
    luke: 'John',
    john: 'Matthew',
    genesis: 'Exodus',
    exodus: 'Leviticus',
    leviticus: 'Numbers',
    numbers: 'Deuteronomy',
    deuteronomy: 'Genesis',
    romans: '1 Corinthians',
    first_corinthians: '2 Corinthians',
    second_corinthians: 'Galatians',
    galatians: 'Ephesians',
    ephesians: 'Philippians',
    philippians: 'Colossians',
    colossians: 'Hebrews',
    hebrews: 'Romans',
    first_thessalonians: '2 Thessalonians',
    second_thessalonians: '1 Timothy',
    first_timothy: '2 Timothy',
    second_timothy: 'Titus',
    titus: 'Philemon',
    philemon: 'James',
    james: '1 Peter',
    first_peter: '2 Peter',
    second_peter: '1 John',
    first_john: '2 John',
    second_john: '3 John',
    third_john: 'Jude',
    jude: 'Revelation',
    revelation: '1 Thessalonians',
    job: 'Ecclesiastes',
    ecclesiastes: 'Song of Solomon',
    song_of_solomon: 'Job',
    psalms: 'Psalms',
    proverbs: 'Proverbs',
    joshua: 'Judges',
    judges: 'Ruth',
    ruth: '1 Samuel',
    first_samuel: '2 Samuel',
    second_samuel: '1 Kings',
    first_kings: '2 Kings',
    second_kings: '1 Chronicles',
    first_chronicles: '2 Chronicles',
    second_chronicles: 'Ezra',
    ezra: 'Nehemiah',
    nehemiah: 'Esther',
    esther: 'Joshua',
    isaiah: 'Jeremiah',
    jeremiah: 'Lamentations',
    lamentations: 'Ezekiel',
    ezekiel: 'Daniel',
    daniel: 'Hosea',
    hosea: 'Joel',
    joel: 'Amos',
    amos: 'Obadiah',
    obadiah: 'Jonah',
    jonah: 'Micah',
    micah: 'Nahum',
    nahum: 'Habakkuk',
    habakkuk: 'Zephaniah',
    zephaniah: 'Haggai',
    haggai: 'Zechariah',
    zechariah: 'Malachi',
    malachi: 'Isaiah',
    acts: 'Acts'
  }
end
