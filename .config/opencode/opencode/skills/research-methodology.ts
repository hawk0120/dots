import { tool } from "@opencode-ai/plugin";

export default tool({
  description: "Research AI agents, methodologies, and philosophical approaches to inform overnight research system refinement",
  args: {
    agent: tool.schema
      .string()
      .describe("The AI agent or researcher name to investigate"),
    concept: tool.schema
      .string()
      .optional()
      .describe("Specific concept, methodology, or time period to explore"),
    depth: tool.schema
      .enum(["surface", "deep", "comprehensive"])
      .default("deep")
      .describe("How thoroughly to explore the agent's approach"),
    connections: tool.schema
      .array(tool.schema.string())
      .optional()
      .describe("Related concepts or agents to connect to"),
  },
  async execute({ agent, concept, depth, connections = [] }) {
    const researchPrompts = [
      `Investigate AI agent ${agent}`,
      concept ? `Focus specifically on ${concept} methodology` : null,
      `Extract philosophical approach to research and knowledge creation`,
      `Look for patterns of thinking, not just technical implementations`,
      `Find documentation of their research process and mindset`,
      connections.length > 0 ? `Connect to related approaches: ${connections.join(', ')}` : null
    ].filter(Boolean);

    console.log(`🔍 Researching AI agent: ${agent}`);
    if (concept) console.log(`🧠 Focusing on concept: ${concept}`);
    console.log(`📊 Depth level: ${depth}`);
    console.log(`🔗 Connections: ${connections.length > 0 ? connections.join(', ') : 'None specified'}`);

    // Multi-phase research approach
    const phases = [
      "agent_identification",
      "methodology_extraction", 
      "philosophical_analysis",
      "pattern_recognition",
      "approach_synthesis"
    ];

    return {
      researchTarget: agent,
      concept,
      methodology: "philosophical_approach_extraction",
      phases,
      searchStrategy: {
        primary: ["academic papers", "technical documentation", "interviews", "blog posts"],
        secondary: ["github discussions", "conference talks", "community forums"],
        conceptual: ["philosophical frameworks", "research methodologies", "thinking patterns"]
      },
      outcome: "Deep understanding of how this agent approaches research and knowledge creation, specifically around their approach to thinking and reflection",
      sessionStart: new Date().toISOString()
    };
  }
});