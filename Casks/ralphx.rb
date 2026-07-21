cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.74.0"
  sha256 arm:   "bc16bb3bff43386f7bbf3bac85b7d1e32f55e5ec1e4289ed622a3398ffc56792",
         intel: "afca65248e7674d831eecc0f5eb8a350a918afd9aed3f103fd92a050e8cd716f"

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
