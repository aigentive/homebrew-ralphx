cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.62.0"
  sha256 arm:   "fb88785c802d204dff038d833c493b72479a64d6ddcf58af3b00a97cb54c0bc3",
         intel: "b2bfeaf49ecec1356bbd435c3eacef9067ddbc10fca3112d46230e8b10ffb96f"

  url "https://github.com/aigentive/ralphx.app/releases/download/v#{version}/RalphX_#{version}_#{arch}.dmg"
  name "RalphX"
  desc "Native Mac GUI for autonomous AI development"
  homepage "https://github.com/aigentive/ralphx.app"
  auto_updates true

  depends_on formula: "node"
  depends_on macos: ">= :ventura"

  app "RalphX.app"

  caveats do
    <<~EOS
      Install at least one supported AI harness CLI after install.
      RalphX can update itself in-app after install.
      To force a Homebrew-managed refresh, run: brew upgrade --cask ralphx
    EOS
  end
end
