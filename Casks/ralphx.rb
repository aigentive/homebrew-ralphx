cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.22.0"
  sha256 arm:   "69dc71ff108fd8878368ce5ea22a7f3cd3f6fbe1e4f9d72b6615e6a945484a9b",
         intel: "821905e000f45bcf89ba45c4af2453b0995753d94e8413e46468419836e6552a"

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
