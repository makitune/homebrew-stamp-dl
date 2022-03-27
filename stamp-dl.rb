# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class StampDl < Formula
  desc "Download LINE stamp from the command-line"
  homepage "https://github.com/makitune/stamp-dl/"
  url "https://github.com/makitune/stamp-dl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "528b2bd12c33afe97512ec9054d2ebed7de5d557c7987590d8bbd749a1efcf31"
  license "MIT"

  bottle do
    root_url "https://github.com/makitune/stamp-dl/releases/download/v0.1.0/"
    sha256 cellar: :any_skip_relocation, darwin_arm64:  "3d821eb61cb3c1787aaaf62253bed1fe54de54a86cec531f2e0eea5e53c37d26"
    sha256 cellar: :any_skip_relocation, darwin_amd64:  "69121568dc86e4ee13ed72b9b13e5a7fcd175315097fda850d049578e3467408"
  end

  depends_on "go" => :build

  def install
    system "go", "build"
    bin.install "stamp-dl"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test stamp-dl`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
