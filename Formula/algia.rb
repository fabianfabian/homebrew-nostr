class Algia < Formula
  desc "Nostr CLI client written in Go"
  homepage "https://github.com/mattn/algia"
  url "https://github.com/mattn/algia.git",
      tag:      "v0.0.78",
      revision: "018de6aad5ba64718c4173507d943c62a35073aa"
  license "MIT"
  head "https://github.com/mattn/algia.git", branch: "master"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/algia", "-h"
  end
end
