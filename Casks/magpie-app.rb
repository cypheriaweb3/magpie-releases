cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.620"
  sha256 arm:   "7fa17489bedd51a4f58768e34610c6dc619706737682fc07f0647119c6459939",
         intel: "0233496e4dc103676e41f2c8e21af6dbfe9ed8af78a27bba621cbce23ebe73d7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
