class DiamondPatterns < Formula
  desc "Diamond Patterns for creating projects"
  homepage "https://github.com/iandennismiller/diamond-patterns"
  # url "https://pypi.python.org/packages/d9/47/9b2449abffbfbdd77104cdd2ce11b2ecf5cbc37363bd3bbe55ed4f352094/Diamond-Patterns-0.1.1.tar.gz"
  version "0.2.0"
  # version_scheme 1
  url "https://github.com/iandennismiller/diamond-patterns/archive/master.zip"
  # sha256 "9b2449abffbfbdd77104cdd2ce11b2ecf5cbc37363bd3bbe55ed4f352094"

  head "https://github.com/iandennismiller/diamond-patterns.git"

  bottle :unneeded

  depends_on "pyenv"

  def install
    ENV["PREFIX"] = prefix
    system "make install"
  end

  test do
    # shell_output("eval \"$(pyenv init -)\" && pyenv virtualenvwrapper")
  end
end
