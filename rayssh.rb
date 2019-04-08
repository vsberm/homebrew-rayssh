# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Rayssh < Formula
  desc "rayssh transfer"
  homepage "https://www.raysync.cn/"
  url "https://raw.githubusercontent.com/vsberm/rayssh-release/master/macOS/rayssh-0.0.2.tar.gz"
  sha256 "9382e81093a8e400a673db35f16933329648070af4faa464e435101e14158033"
  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # system "cmake", ".", *std_cmake_args
    bin.install "./bin/rayscp"
    bin.install "./bin/rayssh"
    bin.install "./bin/rayssh-keygen"
    bin.install "./bin/raysync"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test rayssh`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
