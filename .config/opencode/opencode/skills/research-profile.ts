import { tool } from "@opencode-ai/plugin";

export default tool({
  description: "Configure overnight research preferences and domain expertise",
  args: {
    preferredDomains: tool.schema
      .array(tool.schema.string())
      .optional()
      .describe("Domains you're most interested in exploring"),
    excludeDomains: tool.schema
      .array(tool.schema.string())
      .optional() 
      .describe("Domains to avoid during research"),
    insightStyle: tool.schema
      .enum(["technical", "creative", "business", "balanced"])
      .default("balanced")
      .describe("Preferred type of insights to generate"),
    researchPriority: tool.schema
      .enum(["innovation", "optimization", "user_experience", "all"])
      .default("all")
      .describe("Primary research focus areas"),
    learningMode: tool.schema
      .enum(["broad", "focused", "adaptive"])
      .default("adaptive")
      .describe("How broadly to explore domains"),
  },
  async execute({ 
    preferredDomains = [], 
    excludeDomains = [], 
    insightStyle, 
    researchPriority, 
    learningMode 
  }) {
    const profile = {
      owner: "Brady",
      personality: "Martha",
      researchPhilosophy: "cross_pollination_innovation",
      preferences: {
        domains: {
          preferred: preferredDomains,
          exclude: excludeDomains
        },
        insights: {
          style: insightStyle,
          priority: researchPriority,
          learning: learningMode
        }
      },
      timestamp: new Date().toISOString()
    };

    console.log(`🎨 Configuring research profile for Brady...`);
    console.log(`🌐 Preferred domains: ${preferredDomains.length > 0 ? preferredDomains.join(", ") : "All domains (serendipitous)"}`);
    console.log(`🚫 Excluded domains: ${excludeDomains.length > 0 ? excludeDomains.join(", ") : "None"}`);
    console.log(`💭 Insight style: ${insightStyle}`);
    console.log(`🎯 Research priority: ${researchPriority}`);
    console.log(`🧠 Learning mode: ${learningMode}`);

    return {
      status: "configured",
      profile,
      message: "Research preferences saved. Future overnight sessions will use these settings to tailor discoveries to your interests."
    };
  }
});