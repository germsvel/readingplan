class BibleBooks

  def last_chapter(book)
    CHAPTER_COUNT[book_key(book)]
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

  CHAPTER_COUNT = {
    genesis: 50,
    exodus: 40,
    leviticus: 27,
    numbers: 36,
    deuteronomy: 34,
    joshua: 24,
    judges: 21,
    ruth: 4,
    first_samuel: 31,
    second_samuel:24,
    first_kings: 22,
    second_kings: 25,
    first_chronicles: 29,
    second_chronicles: 36,
    ezra: 10,
    nehemiah: 13,
    esther: 10,
    job: 42,
    psalms: 150,
    proverbs: 31,
    ecclesiastes: 12,
    song_of_solomon: 8,
    isaiah: 66,
    jeremiah: 52,
    lamentations: 5,
    ezekiel: 48,
    daniel: 12,
    hosea: 14,
    joel: 3,
    amos: 9,
    obadiah: 1,
    jonah: 4,
    micah: 7,
    nahum: 3,
    habakkuk: 3,
    zephaniah: 3,
    haggai: 2,
    zechariah: 14,
    malachi: 4,
    matthew: 28,
    mark: 16,
    luke: 24,
    john: 21,
    acts: 28,
    romans: 16,
    first_corinthians: 16,
    second_corinthians: 13,
    galatians: 6,
    ephesians: 6,
    philippians: 4,
    colossians: 4,
    first_thessalonians: 5,
    second_thessalonians: 3,
    first_timothy: 6,
    second_timothy: 4,
    titus: 3,
    philemon: 1,
    hebrews: 13,
    james: 5,
    first_peter: 5,
    second_peter: 3,
    first_john: 5,
    second_john: 1,
    third_john: 1,
    jude: 1,
    revelation: 22
  }
end


