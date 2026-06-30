cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.53.0"
  sha256 arm:   "bf5a976079d39706d45dabc67f040435e3a8c85cb7665e9d8959cfa04197c849",
         intel: "8fd41dd3d8c5955f64b7a758c741aea4ef0ccfae29c2c2cd40befef29a0e5a76"

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
