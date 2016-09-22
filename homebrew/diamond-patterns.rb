class DiamondPatterns < Formula
  desc "Diamond Patterns for creating projects"
  homepage "https://github.com/iandennismiller/diamond-patterns"
  # url "https://pypi.python.org/packages/d9/47/9b2449abffbfbdd77104cdd2ce11b2ecf5cbc37363bd3bbe55ed4f352094/Diamond-Patterns-0.1.1.tar.gz"
  version_scheme 1
  url "https://github.com/iandennismiller/diamond-patterns/archive/0.2.0.tar.gz"
  sha256 "5830388ac6b2b6b74fa3818ecc68e3a765418f4e22126cd17abdb709b0041ba9"

  head "https://github.com/iandennismiller/diamond-patterns.git"

  bottle :unneeded

  depends_on "pyenv"

  def install
    ENV["PREFIX"] = prefix
    system "make install"
  end

  test do
    # shell_output("eval \"$(pyenv init -)\" && pyenv virtualenvwrapper")
    shell_output("diamond")
  end
end
