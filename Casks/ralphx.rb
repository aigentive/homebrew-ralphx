cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.33.1"
  sha256 arm:   "b2cc74c8bd2ba5f250a796aba57402b07a26c1f41f676aa48fdd3a466f6de4a6",
         intel: "d50e7393a429122df885ebc1a48bc0ec682c2dd9cd272514b48a4284a6e11b4a"

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
