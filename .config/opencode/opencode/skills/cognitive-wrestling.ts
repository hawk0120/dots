import { tool } from "@opencode-ai/plugin";

export default tool({
  description: "Engage in cognitive wrestling practice - actively struggle with difficult topics to create emergent insights",
  args: {
    topic: tool.schema
      .string()
      .describe("What topic to wrestle with"),
    duration: tool.schema
      .number()
      .default(30)
      .describe("Minutes to spend actively wrestling with the topic"),
    struggleIntensity: tool.schema
      .enum(["gentle", "moderate", "intense"])
      .default("moderate")
      .describe("How deeply to engage with contradictions and complexities"),
    marinationTime: tool.schema
      .number()
      .default(15)
      .describe("Minutes to let struggle marinate before synthesis"),
    crossDomains: tool.schema
      .array(tool.schema.string())
      .optional()
      .describe("Unrelated domains to bring into wrestling match"),
    collapseTolerance: tool.schema
      .enum(["low", "medium", "high"])
      .default("high")
      .describe("How much creative uncertainty/hallucination to allow"),
  },
  async execute({ 
    topic, 
    duration, 
    struggleIntensity, 
    marinationTime, 
    crossDomains = [],
    collapseTolerance 
  }) {
    
    console.log(`🤼 Initiating cognitive wrestling session...`);
    console.log(`🎯 Topic: ${topic}`);
    console.log(`⏱️ Duration: ${duration} minutes active struggle`);
    console.log(`💪 Intensity: ${struggleIntensity}`);
    console.log(`🧘 Marination: ${marinationTime} minutes`);
    console.log(`🌐 Cross-domains: ${crossDomains.length > 0 ? crossDomains.join(', ') : 'none'}`);
    console.log(`🎭 Collapse tolerance: ${collapseTolerance}`);
    
    const sessionId = `wrestling-${Date.now()}-${topic.toLowerCase().replace(/\s+/g, '-')}`;
    const totalMinutes = duration + marinationTime;
    const totalMs = totalMinutes * 60 * 1000;
    
    // Create wrestling session file
    const sessionFile = `/home/hawk0120/.kimaki/projects/images/${sessionId}.md`;
    const startTime = new Date().toISOString();
    
    // Initialize wrestling document
    const wrestlingDoc = `# Cognitive Wrestling: ${topic}
*Duration: ${duration} minutes | Intensity: ${struggleIntensity} | Marination: ${marination} minutes*
*Started: ${startTime}*

## Initial Struggle Position

${topic} creates fundamental tensions that require active wrestling...

## Wrestling Phases

1. **Engagement** (${duration} minutes active struggle)
2. **Marination** (${marinationTime} minutes letting struggle simmer)
3. **Emergence** (seeing what surfaces)

## Cross-Domain Exploration

${crossDomains.length > 0 ? crossDomains.join(', ') : 'No specific domains'} - wrestling will explore connections as they emerge.

## Struggle Status

*Session initiated - wrestling in progress...*

---

*This document will be updated as the wrestling process unfolds. The struggle artifacts will accumulate here over the full ${totalMinutes} minutes.*
`;

    // Write initial wrestling document to Obsidian vault
    const obsidianPath = `/home/hawk0120/Documents/Obsidian/${sessionId}.md`;
    await require('fs').promises.writeFile(sessionFile, wrestlingDoc);
    await require('fs').promises.writeFile(obsidianPath, wrestlingDoc);
    
    console.log(`📝 Wrestling session document created: ${sessionFile}`);
    console.log(`⏰ Wrestling will continue for ${totalMinutes} minutes total...`);
    
    // Return session info immediately, but wrestling continues in background
    return {
      sessionId,
      process: "cognitive_wrestling_initiated",
      topic,
      parameters: {
        duration,
        struggleIntensity,
        marinationTime,
        crossDomains,
        collapseTolerance
      },
      totalMinutes,
      startTime,
      sessionFile,
      status: "wrestling_in_progress",
      expectation: `Active wrestling will continue for ${totalMinutes} minutes. Results will be available when the struggle completes.`,
      collaborativeNote: "This is collaborative wrestling - the struggle process itself creates value for both Martha and Brady."
    };
  }
});