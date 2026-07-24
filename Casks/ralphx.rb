cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.77.0"
  sha256 arm:   "1364e894e6acc55323416221f8a0b20ee0a2ed82c908367aeeef372d7ced4778",
         intel: "552497f443a8c0d4aba936012184cd559b68f8e38d84864b178d2e0cbb4388cb"

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
